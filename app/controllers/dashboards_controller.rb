class DashboardsController < ApplicationController

  def show
    @user = current_user
    @transactions = @user.transactions
    @book = []
    
    @transactions.each do |transaction|
     @book << transaction.book_id
    end

    @booking = Book.where(id: @book)
  end
end
