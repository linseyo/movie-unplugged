class CreateMovies < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
