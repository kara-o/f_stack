class AddDeleteToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :delete, :boolean, :default => false
  end
end
