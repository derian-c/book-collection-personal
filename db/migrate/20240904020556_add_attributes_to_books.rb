class AddAttributesToBooks < ActiveRecord::Migration[7.2]
  def change
    add_column :books, :author, :string
    add_column :books, :price, :float
    add_column :books, :published_date, :date
  end
end
