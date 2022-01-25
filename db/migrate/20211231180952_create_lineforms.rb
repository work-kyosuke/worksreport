class CreateLineforms < ActiveRecord::Migration[6.0]
  def change
    create_table :lineforms do |t|
      t.bigint :user_id
      t.string :line_status
      t.string :progress
      t.string :line_carrier
      t.string :line_plan
      t.date :hope_to_open
      t.string :contractor_name
      t.string :contractor_furigana
      t.string :postal_code
      t.string :location_prefectures
      t.string :location_address
      t.string :location_property
      t.string :location_floor
      t.string :contractor_p_number
      t.string :manager_surname
      t.string :manager_name
      t.string :manager_surname_kana
      t.string :manager_name_kana
      t.string :manager_email
      t.string :manager_number
      t.string :contractor_relations
      t.text :confirmation_document
      t.string :line_others
      t.timestamps
    end
  end
end
