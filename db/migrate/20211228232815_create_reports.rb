class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.bigint :user_id
      t.string :status
      t.string :progress
      t.string :report_c
      t.string :report_c_postal
      t.string :report_c_address
      t.string :report_c_property
      t.string :report_c_floor
      t.string :report_c_number
      t.string :report_mg
      t.string :report_mg_email
      t.string :subject
      t.string :work_class
      t.text :work_content
      t.datetime :working_date
      t.datetime :working_date_end
      t.string :work_place
      t.string :work_place_detail
      t.string :prime_c
      t.string :prime_c_postal
      t.string :prime_c_address
      t.string :prime_c_property
      t.string :prime_c_floor
      t.string :prime_c_number
      t.string :prime_c_person
      t.string :others
      t.text :report_file_1
      t.text :report_file_2
      t.text :report_file_3
      t.timestamps
    end
  end
end
