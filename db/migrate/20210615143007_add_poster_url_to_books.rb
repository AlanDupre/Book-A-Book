class AddPosterUrlToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :poster_url, :string
  end
end
