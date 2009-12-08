class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :name
      t.text :address1
      t.text :address2
      t.string :city
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
