require "application_system_test_case"

class UpcomingBooksTest < ApplicationSystemTestCase
  setup do
    @upcoming_book = upcoming_books(:one)
  end

  test "visiting the index" do
    visit upcoming_books_url
    assert_selector "h1", text: "Upcoming Books"
  end

  test "creating a Upcoming book" do
    visit upcoming_books_url
    click_on "New Upcoming Book"

    fill_in "Attachment", with: @upcoming_book.attachment
    fill_in "Author", with: @upcoming_book.author
    fill_in "B subject", with: @upcoming_book.b_subject
    fill_in "Description", with: @upcoming_book.description
    fill_in "Title", with: @upcoming_book.title
    fill_in "User", with: @upcoming_book.user_id
    click_on "Create Upcoming book"

    assert_text "Upcoming book was successfully created"
    click_on "Back"
  end

  test "updating a Upcoming book" do
    visit upcoming_books_url
    click_on "Edit", match: :first

    fill_in "Attachment", with: @upcoming_book.attachment
    fill_in "Author", with: @upcoming_book.author
    fill_in "B subject", with: @upcoming_book.b_subject
    fill_in "Description", with: @upcoming_book.description
    fill_in "Title", with: @upcoming_book.title
    fill_in "User", with: @upcoming_book.user_id
    click_on "Update Upcoming book"

    assert_text "Upcoming book was successfully updated"
    click_on "Back"
  end

  test "destroying a Upcoming book" do
    visit upcoming_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Upcoming book was successfully destroyed"
  end
end
