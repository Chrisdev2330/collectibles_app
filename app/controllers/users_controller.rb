class UsersController < ApplicationController
    def new
        @user= User.new
    end
    
    def create
        @user = User.new user_params

        if @user.save
            redirect_to new_user_path, notice: "Usuario creado correctamente"
        else
            
            render :new, status: :unprocessable_entity # muestra el status
    
        end
        
        
    end
    


    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
