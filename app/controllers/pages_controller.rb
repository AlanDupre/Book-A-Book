class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @books = Book.all.last(4)
  end
end
