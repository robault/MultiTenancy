# Commands used: 

```bash
rails new MultiTenancy -d=postgresql
```

```bash
bundle exec rails generate scaffold Home tagline:string
```

```bash
bundle exec rails generate scaffold Message text:string
```

```bash
bundle exec rails generate scaffold Tenant subdomain:string
```

```bash
bundle exec rake db:drop db:create db:migrate
```

# Additions made:

layouts/_header.html.erb
```html
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="<%= homes_path %>">Home</a>
    <a class="navbar-brand" href="<%= messages_path %>">Messages</a>
  </div>
</nav>
```

layouts/application.html.erb

```html
  <body>
    <%= render "layouts/header" %>
    <%= yield %>
  </body>
```

config/routes.rb
```ruby
root "homes#index"
```

config/environments/development.rb
```ruby
config.hosts << "lvh.me"
```

Addition to gem file:
```ruby
gem 'ros-apartment', require: 'apartment' # works with rails 7
```

```bash
bundle exec rails generate apartment:install
```

In a rails console:

```ruby
Apartment::Tenant.create('glitzy')
```

```bash
bundle exec rails generate scaffold User email tenant:references
```

With apartment setup, there is no need for "references" to a tenant. This next scaffold automatically works because it is not in the exclusion list in the apartment.rb initializer.

```bash
bundle exec rails generate scaffold Projects title
```

---

# From the GoRails video: 

https://gorails.com/episodes/multitenancy-with-apartment?autoplay=1

### Database Issue

Each PostgreSQL schema has the same tables as any other. Only by looking at the apartment initalizer exclusions can anyone know which tables are tenant specific.

Ideally there would be a single "shared" schema and a schema for each tenant. This would allow the database to be more easily understood by a database administrator.
