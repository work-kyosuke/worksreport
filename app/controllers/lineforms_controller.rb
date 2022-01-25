class LineformsController < ApplicationController
  
  before_action :set_lineform, only: [:edit, :show]
  
  def index
    
    @lineform = Lineform.all
    
  end
  
  def show
  
  end
  
  def new
    
    @lineform = Lineform.new
    
  end
  
  def edit
    
  end
  
  def create
    
    Lineform.create(lineform_params)
  
  end
  
  def update
    lineform = Lineform.find(params[:id])
    lineform.update(lineform_params)
  end
  
  
  private
  
  def lineform_params
    
    params.require(:lineform).permit(:line_plan, :line_others, :hope_to_open, :contractor_name, :contractor_furigana, :postal_code, :location_prefectures, :location_address, :location_property, :location_floor, :contractor_p_number, :manager_surname, :manager_name, :manager_surname_kana, :manager_name_kana, :manager_email, :manager_number, :contractor_relations, :confirmation_document,:pdf_file).merge(user_id: current_user.id)
  
  end
  
  def set_lineform
    @lineform = Lineform.find(params[:id])
  end
  
end
