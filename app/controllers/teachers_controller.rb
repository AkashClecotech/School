class TeachersController < ApplicationController
   def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
    @bookable = @teacher
    @books = @bookable.books
    @book = Book.new
  end
    
  def new
    @teachers = Teacher.new
    @student = Student.all    
  end  
  def edit
    @teacher = Teacher.find(params[:id])
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to @teacher, notice: ""
    else
      render :new
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name,:student_ids)
  end
end
