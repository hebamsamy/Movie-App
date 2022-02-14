import 'package:flutter/material.dart';
import 'package:movie_app/movieModel.dart';

class MovieCard extends StatelessWidget {
  MovieModel movie;

  MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    print(movie.title);
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 50,
      child: Column(
        children: [
          ListTile(
            title: Text(movie.title),
            subtitle: Text(
              movie.overview,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Image.network(
            movie.poster_path,
          ),
          //  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class MovieCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Card(
//       margin: EdgeInsets.all(20),
//       elevation: 50,
//       child: Column(
//         children: [
//           ListTile(
//             title: const Text('Card title 1'),
//             subtitle: Text(
//               'Secondary Text',
//               style: TextStyle(color: Colors.black.withOpacity(0.6)),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
//               style: TextStyle(color: Colors.black.withOpacity(0.6)),
//             ),
//           ),
//           ButtonBar(
//             alignment: MainAxisAlignment.start,
//             children: [
//               FlatButton(
//                 textColor: Colors.green,
//                 onPressed: () {
//                   // Perform some action
//                 },
//                 child: const Text('Details'),
//               ),
//               FlatButton(
//                 textColor: Colors.green,
//                 onPressed: () {
//                   // Perform some action
//                 },
//                 child: const Text('Add to favorite'),
//               ),
//             ],
//           ),
//           Image.network(
//               'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
//         ],
//       ),
//     );
//   }
// }
