class ChangeTableUsers < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :users, :usertype, :is_admin
    change_column :users, :is_admin, 'boolean USING CAST(is_admin AS boolean)'
  end

  def self.down
    rename_column :users, :is_admin,:usertype
    change_column :users, :usertype, 'string USING CAST(usertype AS string)'
  end

end
