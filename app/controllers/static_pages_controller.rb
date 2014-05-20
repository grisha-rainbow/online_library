class StaticPagesController < ApplicationController
  def home
  	@books = Book.order(:title)
  end

  def help
  end

  def about
  end

  def contact
  end
end
