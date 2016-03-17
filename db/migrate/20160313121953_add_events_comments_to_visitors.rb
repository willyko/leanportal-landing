class AddEventsCommentsToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :event_next, :string
    add_column :visitors, :comments, :text
    add_column :visitors, :event_favourite, :string
  end
end
