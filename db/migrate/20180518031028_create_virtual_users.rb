class CreateVirtualUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :virtual_users do |t|
      t.references :virtual_domain, foreign_key: true
      t.string :password
      t.string :email

      t.timestamps
    end
    add_index :virtual_users, :email, unique: true
  end
end
