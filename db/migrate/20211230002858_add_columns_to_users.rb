class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, after: :id
    add_column :users, :name_kana, :string, after: :name
    add_column :users, :user_type, :string, after: :name_kana
    add_column :users, :company, :string, after: :user_type
    add_column :users, :c_postal, :string, after: :company
    add_column :users, :c_address, :string, after: :c_postal
    add_column :users, :c_building, :string, after: :c_address
    add_column :users, :c_floor, :string, after: :c_building
    add_column :users, :c_p_number, :string, after: :c_address
  end
end
