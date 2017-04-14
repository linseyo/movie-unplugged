class AddColumnsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :poster, :string
    add_column :movies, :year, :string
  end
end
