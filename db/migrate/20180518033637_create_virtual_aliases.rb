class CreateVirtualAliases < ActiveRecord::Migration[5.1]
  def change
    create_table :virtual_aliases do |t|
      t.references :virtual_domain, foreign_key: true
      t.string :source
      t.string :destination

      t.timestamps
    end
  end
end
