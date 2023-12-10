class AddDescriptionToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articales, :description, :text
  end
end
