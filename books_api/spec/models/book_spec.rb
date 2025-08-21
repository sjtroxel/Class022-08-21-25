require 'rails_helper'

RSpec.describe Book, type: :model do
   context 'validations' do
    it 'is valid with all attributes' do
      expect(build(:book)).to be_valid
    end

    it 'is invalid without a title' do
      book = build(:book, title: nil)
      expect(book).not_to be_valid
      expect(book.errors[:title]).to include("can't be blank")
    end

    it 'is invalid without an author' do
      book = build(:book, author: nil)
      expect(book).not_to be_valid
      expect(book.errors[:author]).to include("can't be blank")
    end

    it 'is invalid if read is nil' do
      book = build(:book, read: nil)
      expect(book).not_to be_valid
      expect(book.errors[:read]).to include("is not included in the list")
    end
  end
end
