require( 'pry-byebug' )
require ('pg')
require_relative('./models/star.rb')
require_relative('./models/movie.rb')
require_relative('./models/casting.rb')

Star.delete_all()
Movie.delete_all()
Casting.delete_all()

star1 = Star.new({'first_name' => 'Brad', 'last_name' => 'Pitt'})
star2 = Star.new({'first_name' => 'Clint', 'last_name' => 'Eastwood'})
star3 = Star.new({'first_name' => 'Scarlett', 'last_name' => 'Johansson'})
star4 = Star.new({'first_name' => 'Edward', 'last_name' => 'Norton'})

movie1 = Movie.new({'title' => 'Fight Club', 'genre' => 'drama','rating' => 10})
movie2 = Movie.new({'title' => 'Inglorious Basterds', 'genre' => 'drama', 'rating' => 8})
movie3 = Movie.new({'title' => 'Gran Torino', 'genre' => 'drama', 'rating' => 9})
movie4 = Movie.new({'title' => 'Dirty Harry', 'genre' => 'action', 'rating' => 8})
star1.save()
star2.save()
star3.save()
star4.save()

movie1.save()
movie2.save()
movie3.save()
movie4.save()

star3.first_name = 'jarjarbinks'


casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 1000000})
casting2 = Casting.new({'movie_id' => movie1.id, 'star_id' => star4.id, 'fee' => 500000})
casting3 = Casting.new({'movie_id' => movie2.id, 'star_id' => star1.id, 'fee' => 900000})

casting1.save()
casting2.save()
casting3.save()
star3.update()

p movie1.show_stars

binding.pry
p Star.all
