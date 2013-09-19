class CreateVieweds < ActiveRecord::Migration
  def change
    create_table :vieweds do |t|
      t.string :name
    end
  end
end
