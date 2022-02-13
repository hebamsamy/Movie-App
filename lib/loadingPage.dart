import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:movie_app/screens/ListScreen.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  GetFromApi() async {
    //https://api.themoviedb.org/3/movie/550?api_key=eb03df251074313f6e24c705f23a1cdc
    Uri url = Uri.https("api.themoviedb.org", "/3/movie/550", {
      "api_key": "eb03df251074313f6e24c705f23a1cdc",
    });
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      var obj = jsonDecode(res.body);
      print(obj['title']);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ListScreen(movie:obj)));
    } else {
      print("Something wrong HAppanede");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () async {
              await GetFromApi();
            },
            child: Text("Click Here")));
  }
}
