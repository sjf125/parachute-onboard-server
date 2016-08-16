class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :first_name
      t.string :mid_name
      t.string :last_name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone
      t.string :em_first_name
      t.string :em_last_name
      t.string :em_street1
      t.string :em_street2
      t.string :em_city
      t.string :em_state
      t.integer :em_zip
      t.integer :em_phone
      t.datetime :fngrprnt_appt
      t.string :maiden_name
      t.date :dob
      t.string :birth_city
      t.string :gender
      t.integer :ht_ft
      t.integer :ht_in
      t.string :eye_color
      t.string :license_state
      t.string :license_num
      t.string :mom_maiden_name
      t.string :prev_street1
      t.string :prev_street2
      t.string :prev_city
      t.string :prev_state
      t.integer :prev_zip

      t.timestamps null: false
    end
  end
end
