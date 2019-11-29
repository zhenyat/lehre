class CreateRules < ActiveRecord::Migration[6.0]
  def change
    create_table :rules do |t|
      t.string :scheme, null: false
      t.string :assoc
      t.string :sample

      t.timestamps
    end
  end
end
