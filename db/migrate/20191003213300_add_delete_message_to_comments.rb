class AddDeleteMessageToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :message, :string
  end
end
