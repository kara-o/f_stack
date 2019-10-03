class AddDeleteMessageToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :message, :string
  end
end
