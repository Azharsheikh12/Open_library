require 'test_helper'

class UpcomingBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upcoming_book = upcoming_books(:one)
  end

  test "should get index" do
    get upcoming_books_url
    assert_response :success
  end

  test "should get new" do
    get new_upcoming_book_url
    assert_response :success
  end

  test "should create upcoming_book" do
    assert_difference('UpcomingBook.count') do
      post upcoming_books_url, params: { upcoming_book: { attachment: @upcoming_book.attachment, author: @upcoming_book.author, b_subject: @upcoming_book.b_subject, description: @upcoming_book.description, title: @upcoming_book.title, user_id: @upcoming_book.user_id } }
    end

    assert_redirected_to upcoming_book_url(UpcomingBook.last)
  end

  test "should show upcoming_book" do
    get upcoming_book_url(@upcoming_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_upcoming_book_url(@upcoming_book)
    assert_response :success
  end

  test "should update upcoming_book" do
    patch upcoming_book_url(@upcoming_book), params: { upcoming_book: { attachment: @upcoming_book.attachment, author: @upcoming_book.author, b_subject: @upcoming_book.b_subject, description: @upcoming_book.description, title: @upcoming_book.title, user_id: @upcoming_book.user_id } }
    assert_redirected_to upcoming_book_url(@upcoming_book)
  end

  test "should destroy upcoming_book" do
    assert_difference('UpcomingBook.count', -1) do
      delete upcoming_book_url(@upcoming_book)
    end

    assert_redirected_to upcoming_books_url
  end
end
