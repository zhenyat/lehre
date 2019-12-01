class CreatePersonalPronouns < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_pronouns do |t|
      t.string :de, null: false
      t.string :en, null: false
      t.string :ru, null: false

      t.timestamps
    end
  end
end
