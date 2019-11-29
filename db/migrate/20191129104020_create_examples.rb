class CreateExamples < ActiveRecord::Migration[6.0]
  def change
    create_table :examples do |t|
      t.references :verb, null: false, foreign_key: true
      t.string     :de, null: false
      t.string     :ru
      t.string     :en

      t.timestamps
    end
  end
end
