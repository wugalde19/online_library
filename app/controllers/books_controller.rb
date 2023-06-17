class BooksController < ApplicationController
  def index
    @books = [
      {id: 1, name: 'Libro 1'},
      {id: 2, name: 'Libro 2'},
      {id: 3, name: 'Libro 3'},
    ]

    render json: @books 
  end

  def show
    @books = [
      {id: 1, name: 'Libro 1'},
      {id: 2, name: 'Libro 2'},
      {id: 3, name: 'Libro 3'},
    ]

    @book = @books.select { |book| book[:id].to_s == params[:id] }
    render json: @book 
  end
end
