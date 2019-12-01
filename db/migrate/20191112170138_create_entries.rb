class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer  :pos, null: false, default: 6, limit: 1   # default: 'Nomen'
      t.integer  :art,              default: 0, limit: 1   # default:  Null
      t.string   :de,  null: false
      t.string   :trxn
      t.string   :pl
      t.string   :en,  null: false
      t.string   :ru,  null: false

      t.timestamps
    end
  end
end
