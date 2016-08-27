class UserController < ApplicationController
  def show
    # @user = user_params
  end

  # GET /users
 # def index
 #   @users = User.all
 # end
 #
 # def show
 #   @users = User.find(params[:id])
 # end
 #
 # def new
 #   @users = User.new
 # end

 # GET /users/1/edit
 # def edit
 #   @users = User.find(params[:id])
 # end

 # POST /users
 # def create
 #   @users = User.new(user_params)
 #
 #   if @user.save
 #     redirect_to @user, notice: 'Your account was successfully created.'
 #   else
 #     render :new
 #   end
 # end

 # PATCH/PUT /users/1
 # def update
 #   @user = Home.find(params[:id])
 #   if @user.update(user_params)
 #     redirect_to @user, notice: 'Your account was successfully updated.'
 #   else
 #     render :edit
 #   end
 # end

 # DELETE /users/1
 # def destroy
 #   @user = User.find(params[:id])
 #   @user.destroy
 #   redirect_to users_url, notice: 'Your account was successfully destroyed.'
 # end

 # private
 # Only allow a trusted parameter "white list" through.
 # def user_params
 #   params.require(:name).permit(:address, :phone, :email)
 # end
end
