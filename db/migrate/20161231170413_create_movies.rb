class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :storyline
      t.string :tagline
      t.string :rating

      t.timestamps
    end
  end
end
