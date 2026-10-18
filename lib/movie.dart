class Movie {
  final title;
  final genre;
  final year;
  final rating;
  final image;

  Movie(
      {required this.title,
      required this.genre,
      required this.year,
      required this.rating,
      required this.image});
}

List<Movie> movies = [
  Movie(
    title: 'Interstellar',
    genre: 'Adventure, Drama, Sci-Fi',
    year: 2014,
    rating: 8.7,
    image: 'assets/posters/interstellar.jpg',
  ),
  Movie(
    title: 'The Dark Knight',
    genre: 'Action, Crime, Drama',
    year: 2008,
    rating: 9.0,
    image: 'assets/posters/the_dark_knight.jpg',
  ),
  Movie(
    title: 'Inception',
    genre: 'Action, Adventure, Sci-Fi',
    year: 2010,
    rating: 8.8,
    image: 'assets/posters/inception.jpg',
  ),
  Movie(
    title: 'Oppenheimer',
    genre: 'Biography, Drama, History',
    year: 2023,
    rating: 8.9,
    image: 'assets/posters/oppenheimer.jpg',
  ),
  Movie(
    title: 'The Prestige',
    genre: 'Drama, Mystery, Sci-Fi',
    year: 2006,
    rating: 8.5,
    image: 'assets/posters/the_prestige.jpg',
  ),
  Movie(
    title: 'The Dark Knight Rises',
    genre: 'Action, Drama',
    year: 2012,
    rating: 8.4,
    image: 'assets/posters/the_dark_knight_rises.jpg',
  ),
  Movie(
    title: 'Memento',
    genre: 'Mystery, Thriller',
    year: 2000,
    rating: 8.4,
    image: 'assets/posters/memento.jpg',
  ),
  Movie(
    title: 'Dunkirk',
    genre: 'Action, Drama, History',
    year: 2017,
    rating: 7.8,
    image: 'assets/posters/dunkirk.jpg',
  ),
  Movie(
    title: 'Tenet',
    genre: 'Action, Sci-Fi, Thriller',
    year: 2020,
    rating: 7.3,
    image: 'assets/posters/tenet.jpg',
  ),

  // --- Global Blockbusters ---
  Movie(
    title: 'Avatar',
    genre: 'Action, Sci-Fi',
    year: 2009,
    rating: 7.9,
    image: 'assets/posters/avatar.jpg',
  ),
  Movie(
    title: 'Avengers: Endgame',
    genre: 'Action, Sci-Fi',
    year: 2019,
    rating: 8.4,
    image: 'assets/posters/avengers_endgame.jpg',
  ),
  Movie(
    title: 'Avatar: The Way of Water',
    genre: 'Action, Adventure, Sci-Fi',
    year: 2022,
    rating: 7.6,
    image: 'assets/posters/avatar_the_way_of_water.jpg',
  ),
  Movie(
    title: 'Titanic',
    genre: 'Drama, Romance',
    year: 1997,
    rating: 7.9,
    image: 'assets/posters/titanic.jpg',
  ),
  Movie(
    title: 'Avengers: Infinity War',
    genre: 'Action, Adventure, Sci-Fi',
    year: 2018,
    rating: 8.4,
    image: 'assets/posters/avengers_infinity_war.jpg',
  ),
  Movie(
    title: 'Spider-Man: No Way Home',
    genre: 'Action, Adventure, Fantasy',
    year: 2021,
    rating: 8.2,
    image: 'assets/posters/spider_man_no_way_home.jpg',
  ),
  Movie(
    title: 'Inside Out 2',
    genre: 'Animation, Adventure, Comedy',
    year: 2024,
    rating: 7.6,
    image: 'assets/posters/inside_out_2.jpg',
  ),

  Movie(
    title: 'Top Gun: Maverick',
    genre: 'Action, Drama',
    year: 2022,
    rating: 8.2,
    image: 'assets/posters/top_gun_maverick.jpg',
  ),
];
