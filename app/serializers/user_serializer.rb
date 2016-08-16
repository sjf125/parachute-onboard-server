class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :first_name, :mid_name, :last_name, :street1, :street2, :city, :state, :zip, :phone, :em_first_name, :em_last_name, :em_relation, :em_street1, :em_street2, :em_city, :em_state, :em_zip, :em_phone, :fngrprnt_appt, :maiden_name, :dob, :birth_city, :gender, :ht_ft, :ht_in, :eye_color, :license_state, :license_num, :mom_maiden_name, :prev_street1, :prev_street2, :prev_city, :prev_state, :prev_zip
end
