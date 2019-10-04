class AddDeletedToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :deleted, :boolean, :default => false
  end
end
