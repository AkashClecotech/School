class BooksController < ApplicationController
  # before_filter :load_bookable
  
  def index
    @book = Book.all
  end


  def new
    @lib = lib
    @book = @lib.books.new
    @books = Book.all
  end

  def create
    @lib = lib
    @book = @lib.books.new(books_params)
    if @book.save
      redirect_to root_path, notice: ""
    else
      render :new
    end
  end

  private

    def lib
    if params[:student_id]
      id = params[:student_id]
      Student.find(params[:student_id])
    else
      id = params[:teacher_id]
      Teacher.find(params[:teacher_id])
    end
  end

    def books_params
    params.require(:book).permit!
  end

 
end
