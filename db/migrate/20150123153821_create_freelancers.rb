class CreateFreelancers < ActiveRecord::Migration
  def change
    create_table :freelancers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :bio

      t.timestamps null: false
    end
  end
end
