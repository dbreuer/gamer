class CreateToplists < ActiveRecord::Migration
  def change
    create_table :toplists do |t|
      t.integer :sid
      t.string :pic
      t.string :name
      t.integer :score

      t.timestamps
    end
  end

  def up
    drop_table :products
  end
end
