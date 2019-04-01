class SchoolsController < ApplicationController
  def index
    @schools = School.all  
  end

  def new
    @school = School.new
  end
  def create
  
    
    @school = School.new(school_params)
    if @school.save
      @school_id =School.last.id
      

       @principal = Principal.create(principal: principal_params[:principal], school_id: @school_id)

 
      redirect_to schools_path, notice: ""
    else
      render :new
    end
  end



  private

  def principal_params
    params.require(:school).permit(:principal)
  end
  def school_params
    params.require(:school).permit(:name)
  end
end
