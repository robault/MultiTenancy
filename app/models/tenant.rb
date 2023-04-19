class Tenant < ApplicationRecord
  has_many :users

  after_create :create_tenant

  private

  def create_tenant
    #unless Apartment.tenant_names.include?(self.subdomain)
      Apartment::Tenant.create(self.subdomain)
      #end
  end
end
