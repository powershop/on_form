ActiveRecord::Schema.define(:version => 0) do
  create_table :customers, :force => true do |t|
    t.string   :name,        null: false
    t.string   :email
    t.string   :phone_number
    t.boolean  :friendly,    null: false, default: true
    t.boolean  :verified
    t.timestamps             null: false
  end

  add_index :customers, :email, unique: true

  create_table :houses, :force => true do |t|
    t.string   :street_number, null: false
    t.string   :street_name,   null: false
    t.string   :city,          null: false
    t.integer  :vendor_id,     null: false
    t.timestamps               null: false
  end
end