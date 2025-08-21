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
  end
end