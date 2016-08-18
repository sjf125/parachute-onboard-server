class ChangePhoneTypeInUsers < ActiveRecord::Migration
  def change
    change_column :users, :phone, :string
    change_column :users, :em_phone, :string
    change_column :users, :zip, :string
    change_column :users, :em_zip, :string
    change_column :users, :prev_zip, :string
  end
end
