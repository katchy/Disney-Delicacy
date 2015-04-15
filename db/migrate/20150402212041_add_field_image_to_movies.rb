<<<<<<< HEAD:db/migrate/20150402003254_add_image_to_movies.rb
class AddImageToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :image, :string
  end
end
=======
class AddFieldImageToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :image, :string
  end
end
>>>>>>> feature/admins:db/migrate/20150402212041_add_field_image_to_movies.rb
