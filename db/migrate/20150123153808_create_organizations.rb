class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :description

      t.timestamps null: false
    end
  end
end
