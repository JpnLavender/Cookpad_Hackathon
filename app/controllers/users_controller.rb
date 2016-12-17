class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def user_my_page
    @user = User.find_by(uid: session[:uid])
    render :show
  end

  # GET /users/1/edit
  def edit
  end

  def sign_in
    render 'users/sign_in'
  end

   def sign_in_authentication
   if (user = User.find_by(mail: params[:mail])) && user.authenticate(params[:password])
     session[:user_id] = user.uid
     redirect_to :root
   else
     render :text => 'パスワードまたはメールアドレスが異なります'
   end
 end

  def sign_out
    session.clear
    redirect_to :root
  end

  def sign_up #new
    @user = User.new
    render 'users/new'
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.uid = SecureRandom.uuid
    @user.sex = "0"

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.uid
        redirect_to :root
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by(uid: params[:uid])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      return params.require(:user).permit(:uid, :mail, :password, :password_confirmation, :address, :birthday, :sex)
    end
end
