class CreateKids < ActiveRecord::Migration[6.0]
  def change
    create_table :kids do |t|
      t.references :person, null: false, foreign_key: true
      t.string     :name,   null: false
      t.string     :nick
      t.integer    :year,   null: false

      t.timestamps
    end
  end
end
