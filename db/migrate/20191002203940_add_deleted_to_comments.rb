class AddDeletedToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :deleted, :boolean, :default => false
  end
end
