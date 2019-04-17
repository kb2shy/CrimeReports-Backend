class RemoveEventsFromCases < ActiveRecord::Migration[5.2]
  def change
    remove_column :cases, :events, :text
  end
end
