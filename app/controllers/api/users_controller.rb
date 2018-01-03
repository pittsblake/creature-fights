class Api::UsersController < ApplicationController
    def index
        @users = User.all 
        render json: @users
    end

    def show
        @user = User.find_by_id(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
        @user.save
        render json: @user
    end

    def destroy

        @user = User.find_by_id(params[:id])
        @user.destroy
        
        render json: {
            msg: "Successfully deleted"
        }
    end

    private 
    def user_params
        params.require(:user).permit(:name)
    end
end
