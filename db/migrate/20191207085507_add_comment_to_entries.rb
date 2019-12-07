class AddCommentToEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :entries, :comment, :string
  end
end
