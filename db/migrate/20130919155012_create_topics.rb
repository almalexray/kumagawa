class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :description
      t.integer :hours
      t.references :course, index: true
    end
  end
end
