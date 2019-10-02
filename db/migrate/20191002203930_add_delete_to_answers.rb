class AddDeleteToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :delete, :boolean, :default => false
  end
end
