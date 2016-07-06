# require 'rails_helper'

# RSpec.describe "books/index", type: :view do
#   before(:each) do
#     assign(:books, [
#       Book.create!(
#         :title => "Title",
#         :author => "Author",
#         :description => "MyText",
#         :cover => "Cover",
#         :programming_language => "Programming Language",
#         :edition => "Edition"
#       ),
#       Book.create!(
#         :title => "Title",
#         :author => "Author",
#         :description => "MyText",
#         :cover => "Cover",
#         :programming_language => "Programming Language",
#         :edition => "Edition"
#       )
#     ])
#   end

#   it "renders a list of books" do
#     render
#     assert_select "tr>td", :text => "Title".to_s, :count => 2
#     assert_select "tr>td", :text => "Author".to_s, :count => 2
#     assert_select "tr>td", :text => "MyText".to_s, :count => 2
#     assert_select "tr>td", :text => "Cover".to_s, :count => 2
#     assert_select "tr>td", :text => "Programming Language".to_s, :count => 2
#     assert_select "tr>td", :text => "Edition".to_s, :count => 2
#   end
# end
