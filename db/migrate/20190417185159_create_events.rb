class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :case_id
      t.text :content

      t.timestamps
    end
  end
end
