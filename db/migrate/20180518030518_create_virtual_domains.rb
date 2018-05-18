class CreateVirtualDomains < ActiveRecord::Migration[5.1]
  def change
    create_table :virtual_domains do |t|
      t.string :name

      t.timestamps
    end
  end
end
