class CreateSamples < ActiveRecord::Migration[6.0]
  def change
    create_table :samples do |t|
      t.references :entry, null: false, foreign_key: true
      t.string     :de,    null: false
      t.string     :en
      t.string     :ru,    null: false

      t.timestamps
    end
  end
end
