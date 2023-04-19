# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

---

From the GoRails video: 

https://gorails.com/episodes/multitenancy-with-apartment?autoplay=1

### Database Issue

Each PostgreSQL schema has the same tables as any other. Only by looking at the apartment initalizer exclusions can anyone know which tables are tenant specific.

Ideally there would be a single "shared" schema and a schema for each tenant. This would allow the database to be more easily understood by a database administrator.

