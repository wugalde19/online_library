class BooksController < ApplicationController
  def index
    @books = [
      {id: 1, name: 'Libro 1', author: 'Autor 1'},
      {id: nil, name: 'Libro 2', author: 'Autor 2'},
      {id: 3, name: 'Libro 3', author: 'Autor 3'},
    ]
  end

  def show
    @books = [
      {id: 1, name: 'Libro 1', author: 'Autor 1'},
      {id: nil, name: 'Libro 2', author: 'Autor 2'},
      {id: 3, name: 'Libro 3', author: 'Autor 3'},
    ]

    @book = @books.select { |book| book[:id].to_s == params[:id] }.first
  end
end
