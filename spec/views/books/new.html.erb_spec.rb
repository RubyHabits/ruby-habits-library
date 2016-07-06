require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :author => "MyString",
      :description => "MyText",
      :cover => "MyString",
      :programming_language => "MyString",
      :edition => "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "textarea#book_description[name=?]", "book[description]"

      assert_select "input#book_cover[name=?]", "book[cover]"

      assert_select "input#book_programming_language[name=?]", "book[programming_language]"

      assert_select "input#book_edition[name=?]", "book[edition]"
    end
  end
end
