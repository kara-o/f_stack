class AddDeleteMessageToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :delete_message, :string
  end
end
