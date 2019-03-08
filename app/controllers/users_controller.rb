class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_parameters)
        if @user.save
            redirect_to new_user_path
        end
    end

    private

    def user_parameters
        params.require(:user).permit(:name , :email, :phoneNumber)
    end
end
