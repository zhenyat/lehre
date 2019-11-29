class CreateExamples < ActiveRecord::Migration[6.0]
  def change
    create_table :examples do |t|
      t.references :verb, null: false, foreign_key: true
      t.string     :de,   null: false
      t.string     :en
      t.string     :ru

      t.timestamps
    end
  end
end
