class ChangeColumns < ActiveRecord::Migration
  def self.up
    change_column :addresses, :address1, :string
    change_column :addresses, :address2, :string
  end

  def self.down
    change_column :addresses, :address2, :text
    change_column :addresses, :address1, :text
  end
end
