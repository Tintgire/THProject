class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :is_admin
      t.string :last_name
      t.string :first_name
      t.timestamps
    end
  end
end
