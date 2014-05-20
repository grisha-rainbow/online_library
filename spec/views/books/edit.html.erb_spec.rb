require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :book_url => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_path(@book), "post" do
      assert_select "input#book_title[name=?]", "book[title]"
      assert_select "textarea#book_description[name=?]", "book[description]"
      assert_select "input#book_image_url[name=?]", "book[image_url]"
      assert_select "input#book_book_url[name=?]", "book[book_url]"
    end
  end
end
