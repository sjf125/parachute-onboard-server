class UsersController < ProtectedController
  skip_before_action :authenticate, only: [:signup, :signin]

  # POST '/sign-up'
  def signup
    user = User.create(user_creds)
    if user.valid?
      render json: user, status: :created
    else
      head :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = user_creds
    if (user = User.authenticate creds[:email],
                                 creds[:password])
      render json: user, serializer: UserLoginSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out/:id'
  def signout
    if current_user == User.find(params[:id])
      current_user.logout
      head :no_content
    else
      head :unauthorized
    end
  end

  # PATCH '/change-password/:id'
  def changepw
    if !current_user.authenticate(pw_creds[:old]) ||
       (current_user.password = pw_creds[:new]).blank? ||
       !current_user.save
      head :bad_request
    else
      head :no_content
    end
  end

  # PATCH '/submit-info/1'
  # PATCH '/submit-info/1.json'
  def submitinfo
    @user = User.find(params[:id])
    if current_user == @user
      @user.update!(user_params)
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def index
    render json: User.all
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    head :bad_request
  end

  private

  def user_params
    params.require(:user)
          .permit(:first_name, :mid_name, :last_name, :street1, :street2, :city, :state, :zip, :phone, :em_first_name, :em_last_name, :em_relation, :em_street1, :em_street2, :em_city, :em_state, :em_zip, :em_phone, :fngrprnt_appt, :maiden_name, :dob, :birth_city, :gender, :ht_ft, :ht_in, :eye_color, :license_state, :license_num, :mom_maiden_name, :prev_street1, :prev_street2, :prev_city, :prev_state, :prev_zip)
  end

  def user_creds
    params.require(:credentials)
          .permit(:email, :password, :password_confirmation)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end

  private :user_creds, :pw_creds
end
