class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name
      t.integer :freelancer
      t.integer :organization
      t.datetime :event
      t.text :details

      t.timestamps null: false
    end
  end
end
