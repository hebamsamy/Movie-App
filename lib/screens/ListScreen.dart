import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  var movie;

  ListScreen({this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 50,
      child: Column(
        children: [
          ListTile(
            title: Text(movie['title'] ?? "Title"),
            subtitle: Text(
              movie['original_title'] ?? 'Secondary Text',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              movie['overview'] ?? '',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                textColor: Colors.green,
                onPressed: () {
                  // Perform some action
                },
                child: const Text('Details'),
              ),
              FlatButton(
                textColor: Colors.green,
                onPressed: () {
                  // Perform some action
                },
                child: const Text('Add to favorite'),
              ),
            ],
          ),
          Expanded(
            child: Image.network(
              'https://image.tmdb.org/t/p/w500/${movie['poster_path']}',
            ),
          )
          //  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
        ],
      ),
    );
  }
}
