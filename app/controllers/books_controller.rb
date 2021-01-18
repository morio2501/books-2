class BooksController < ApplicationController
    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        @book.save
        redirect_to @book
    end
	def index
        @book = Book.new
        @books = Book.all
    end

    def show
        @book = Book.new
        @book1 = Book.find(params[:id])
        @user = @book1.user
    end

    def edit
        @book1 = Book.find(params[:id])
    end

    def update
        @book1 = Book.find(params[:id])
        @book1.update(book_params)
        redirect_to @book1
    end

    def destroy
        @book1 = Book.find(params[:id])
        @book1.destroy
        redirect_to books_path

    end

    private
    def book_params
        params.require(:book).permit(:title, :body)
    end
end
