class AddDeleteToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :delete, :boolean, :default => false
  end
end
