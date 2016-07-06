require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "Title",
      :author => "Author",
      :description => "MyText",
      :cover => "Cover",
      :programming_language => "Programming Language",
      :edition => "Edition"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Cover/)
    expect(rendered).to match(/Programming Language/)
    expect(rendered).to match(/Edition/)
  end
end
