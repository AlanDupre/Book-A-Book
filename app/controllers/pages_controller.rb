class PagesController < ApplicationController
  def home
    @books = Book.all.first(4)
  end

end
