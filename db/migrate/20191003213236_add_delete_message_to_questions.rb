class AddDeleteMessageToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :message, :string
  end
end
