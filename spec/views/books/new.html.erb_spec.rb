require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :book_url => "MyString"
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", books_path, "post" do
      assert_select "input#book_title[name=?]", "book[title]"
      assert_select "textarea#book_description[name=?]", "book[description]"
      assert_select "input#book_image_url[name=?]", "book[image_url]"
      assert_select "input#book_book_url[name=?]", "book[book_url]"
    end
  end
end
