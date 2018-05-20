require 'rails_helper'

# As a User,
# When I visit the book show page,
# I see the average rating for that book.
RSpec.describe Review, type: :model do
  describe 'user show page' do
    it 'should show the average rating for that book' do
      book = Book.create(title: 'House of Leaves')
      user = User.create(name: 'Bob')
      review_1 = user.reviews.create!(description: 'Fantasic', rating: 2, book: book, user: user)
      review_2 = user.reviews.create!(description: 'Scary love story', rating: 2, book: book, user: user)
      review_3 = user.reviews.create!(description: 'Not good', rating: 5, book: book, user: user)

      expect(book.reviews.average_rating).to eq(3)
    end
  end
end
