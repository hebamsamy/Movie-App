import "package:http/http.dart" as http;
import 'dart:convert';

import 'package:movie_app/movieModel.dart';

class NetworkHelper {
  Future getListMovie() async {
    Uri url = Uri.https("api.themoviedb.org", "3/movies/get-popular-movies", {
      "api_key": "eb03df251074313f6e24c705f23a1cdc",
    });
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      var obj = jsonDecode(res.body);
      print(obj);
      //return obj;
    } else {
      print("Something wrong HAppanede");
    }
  }

  Future getMovie() async {
    Uri url = Uri.https("api.themoviedb.org", "/3/movie/550", {
      "api_key": "eb03df251074313f6e24c705f23a1cdc",
    });
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      var obj = jsonDecode(res.body);
      return obj;
    } else {
      print("Something wrong HAppanede");
    }
  }

  Future<List<MovieModel>> getMoviesPopularList() async {
    Uri url = Uri.https("api.themoviedb.org", "/3/movie/popular", {
      "api_key": "eb03df251074313f6e24c705f23a1cdc",
    });
    http.Response res = await http.get(url);
    List<MovieModel> returnedList = [];
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);
      // print(data);
      var JsList = data["results"] as List;
      // print(JsList);
      List<MovieModel> returnedList = JsList.map((element) => MovieModel(
          element["poster_path"],
          id: element["id"],
          title: element["title"],
          overview: element["overview"],
          release_date: element["release_date"])).toList();
      // print(returnedList);
      return returnedList;
    } else {
      print("Something wrong HAppanede");
      return returnedList;
    }
  }

  Future getProductList() async {
    //https://60523dc8fb49dc00175b7d04.mockapi.io/api/v1/products
    Uri url =
        Uri.https("60523dc8fb49dc00175b7d04.mockapi.io", "/api/v1/products");
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      var obj = jsonDecode(res.body);
      print(obj);
    } else {
      print("Something wrong HAppanede");
    }
  }
}
