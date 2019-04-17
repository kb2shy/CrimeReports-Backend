class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :imageurl
      t.string :firstname
      t.string :lastname
      t.datetime :courtdate
      t.bigint :gonumber
      t.string :crime
      t.string :neighborhood
      t.datetime :dov
      t.text :events

      t.timestamps
    end
  end
end
