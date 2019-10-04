class AddDeleteMessageToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :delete_message, :string
  end
end
