class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :en, null: false
      t.string :de, null: false

      t.timestamps
    end
  end
end
