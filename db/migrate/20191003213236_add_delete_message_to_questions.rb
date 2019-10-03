class AddDeleteMessageToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :delete_message, :string
  end
end
