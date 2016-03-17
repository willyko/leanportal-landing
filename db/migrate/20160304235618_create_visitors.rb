class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :name
      t.text :event_last
      t.string :school
      t.string :email
      t.text :event_interested

      t.timestamps null: false
    end
  end
end
