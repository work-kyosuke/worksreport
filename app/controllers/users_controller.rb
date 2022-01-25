class UsersController < ApplicationController
     
     
     def index
       @report = Report.where(user_id: current_user.id).order("id DESC").page(params[:report_page]).per(5)
       @lineform_where = Lineform.where(user_id: current_user.id).order("id DESC").page(params[:lineform_page]).per(5)
       
     end
    
    
     def show
      
      @user = User.find(params[:id])
      @name = current_user.name
      @name_kana = current_user.name_kana
      @email = current_user.email
      @type = current_user.user_type
      @company = current_user.company
      @company_postal = current_user.c_postal
      @company_address = current_user.c_address
      @c_building = current_user.c_building
      @c_floor = current_user.c_floor
      @company_p_number = current_user.c_p_number
      
    end
    
    
    def edit
      
      @user_type = current_user.user_type
      
    end

    
    def update
      current_user.update(update_params)
      
    end
    
    private
    def update_params
      params.require(:user).permit(:name, :email,:user_type,:company,:c_postal,:c_address,:c_building,:c_floor,:c_p_number)
    end
end
