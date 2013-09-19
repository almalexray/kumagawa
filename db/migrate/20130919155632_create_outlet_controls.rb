class CreateOutletControls < ActiveRecord::Migration
  def change
    create_table :outlet_controls do |t|
      t.string :name
    end
  end
end
