class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :typed
      t.string :view
      t.datetime :start_date
      t.datetime :end_date
      t.string :period
      t.integer :hours
      t.string :based
      t.string :subjects
      t.string :outlet_control
      t.string :certificate
      t.integer :cost
    end
  end
end
