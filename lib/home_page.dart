import 'package:flutter/material.dart';
import 'package:movie_library_app/movie.dart';
import 'package:movie_library_app/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool grid = false;
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    // 3 & 4. Filter movies by title or genre (case-insensitive)
    final filteredMovies = movies.where((movie) {
      final query = searchQuery.toLowerCase().trim();
      final titleMatches = movie.title.toLowerCase().contains(query);
      final genreMatches = movie.genre.toLowerCase().contains(query);
      return titleMatches || genreMatches;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: IconButton(
          icon: Icon(grid ? Icons.list : Icons.grid_view),
          onPressed: () {
            setState(() {
              grid = !grid;
            });
          },
        ),
        title: const Text('Movie Library'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 2 & 6. Search TextField without TextEditingController
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              ),
            ),
          ),

          // 5. Centered message if empty, or scrollable grid/list wrapped in Expanded
          Expanded(
            child: filteredMovies.isEmpty
                ? const Center(
                    child: Text(
                      'No movies found',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  )
                : (grid
                    ? _buildGridView(filteredMovies)
                    : _buildListView(filteredMovies)),
          ),
        ],
      ),
    );
  }

  Widget _buildListView(List<Movie> list) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemCount: list.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        return MovieCard(movie: list[index]);
      },
    );
  }

  Widget _buildGridView(List<Movie> list) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return MovieCard(movie: list[index]);
      },
    );
  }
}
