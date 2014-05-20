require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "Title",
      :description => "MyText",
      :image_url => "Image Url",
      :book_url => "Book Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Image Url/)
    rendered.should match(/Book Url/)
  end
end
