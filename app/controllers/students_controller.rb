class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @bookable = @student
    @books = @bookable.books
    @book = Book.new
  end
    
  def new
    @students = Student.new  
    @schools = School.all
    @teacher = Teacher.all    
  end  
  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: ""
    else
      render :new
    end
  end

  private
  def student_params
    params.require(:student).permit(:name,:school_id,:teacher_ids)
  end


end
