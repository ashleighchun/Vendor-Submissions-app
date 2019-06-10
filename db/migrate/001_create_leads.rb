class CreateLeads < ActiveRecord::Migration[4.2]
def change
  create_table :leads do |t|
    t.string :full_name
    t.string :email
    t.string :password_digest
    t.string :vendors
end
