class ReportsController < ApplicationController
  
  before_action :set_report, only: [:edit, :show]
  
  def index
    
  end
  
  def show

    
  end
  
  def new
    @report = Report.new
  end
  
  def create
    Report.create(report_params)
  end
  
  def edit
    
  end
  
  def update
    report = Report.find(params[:id])
    report.update(report_params)
  end
  
  private
  
  def report_params
    params.require(:report).permit( :report_c, :report_c_postal, :report_c_address, :report_c_property, :report_c_floor, :report_c_number, :report_mg, :report_mg_email, :subject, :work_class, :work_content, :working_date, :working_date_end, :work_place, :work_place_detail, :prime_c, :prime_c_postal, :prime_c_address, :prime_c_property, :prime_c_floor, :prime_c_number, :prime_c_person, :others, :report_file_1, :report_file_2, :report_file_3,:pdf_file).merge(user_id: current_user.id)
  end
  
  
  def set_report
    @report = Report.find(params[:id])
    
  end
  
  
end