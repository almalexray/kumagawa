class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :address
      t.string :phone
      t.string :email
      t.string :site
      t.string :serial
      t.string :number
      t.text :certificate
    end
  end
end
