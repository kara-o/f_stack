class AddDeletedToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :deleted, :boolean, :default => false
  end
end
