class UsersController < ApplicationController
    def index
        @users = User.all
        # render json: users
        render :index
    end

    def show
        @user = User.find(params[:id])
        # render json: user
        render :show
    end

    def new
        @user = User.new
        render :new #actually dont even need this
    end

    def create
        @user = User.new(user_params)
        
        if @user.save
            redirect_to user_url(@user)
        else
            # render json: @user.errors.full_messages, status: 422
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
        render :edit
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to user_url(@user)
        else
            # render json: user.errors.full_messages, status: 422
            render :edit
        end
    end

    def destroy
        user = User.find(params[:id])

        user.destroy
        redirect_to users_url 
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :email, :age)
    end
end