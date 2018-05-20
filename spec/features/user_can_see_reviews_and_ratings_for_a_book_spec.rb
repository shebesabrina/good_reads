require 'rails_helper'

# As a User,
# When I visit a book show page,
# I see the book title and a list of reviews for that book,
# which includes the review text, and the name of the user that created that review.
# I also see the rating that the user gave the book.
#
# (rating will be a number between 1 and 5; you do NOT need to validate
# that this falls within this range)

describe 'user show page' do
  it 'should show reviews and ratings' do
    user = User.create(name: 'Bob')
    book = Book.create(title: 'House of Leaves')
    review = user.reviews.create(description: 'Fantasic', rating: 2, book: book, user: user)

    visit book_path(book)

    expect(page).to have_content(review.book.title)
    expect(page).to have_content(review.description)
    expect(page).to have_content(review.rating)
    expect(page).to have_content(review.user.name)
  end
end
