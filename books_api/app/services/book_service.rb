module BookService
  module Base
    def self.create_book(params)
      book = Book.new(params)
      if book.save
        book
      else
        book.errors
      end
    end

    def self.filter_books(params)
      books = Book.all
      books = books.where(title: params[:title]) if params[:title].present?
      books
    end
  end
end