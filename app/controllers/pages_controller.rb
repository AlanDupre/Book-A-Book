class PagesController < ApplicationController
  def home
    @books = Book.all.last(4)
  end
end
