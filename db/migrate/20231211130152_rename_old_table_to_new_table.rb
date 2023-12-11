class RenameOldTableToNewTable < ActiveRecord::Migration[7.0]
  def self.up
    rename_table :articales, :articles
  end

  def self.down
    rename_table :articles, :articales
  end
end
