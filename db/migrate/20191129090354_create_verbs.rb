class CreateVerbs < ActiveRecord::Migration[6.0]
  def change
    create_table :verbs do |t|
      t.references :group,      null: false, foreign_key: true
      t.references :rule,       null: false, foreign_key: true
      t.string     :infinitive, null: false
      t.string     :prasens,    null: false
      t.string     :simple,     null: false
      t.string     :participle, null: false
      t.string     :trxn
      t.string     :ru,         null: false
      t.string     :en
      t.integer    :aux,        default: 0, limit: 1 # default: 'hat'

      t.timestamps
    end
  end
end
