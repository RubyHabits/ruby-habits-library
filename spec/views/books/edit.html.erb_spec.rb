require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :author => "MyString",
      :description => "MyText",
      :cover => "MyString",
      :programming_language => "MyString",
      :edition => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "textarea#book_description[name=?]", "book[description]"

      assert_select "input#book_cover[name=?]", "book[cover]"

      assert_select "input#book_programming_language[name=?]", "book[programming_language]"

      assert_select "input#book_edition[name=?]", "book[edition]"
    end
  end
end
