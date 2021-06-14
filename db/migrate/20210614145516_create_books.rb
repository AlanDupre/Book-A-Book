class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :isbn

      t.timestamps
    end
  end
end
