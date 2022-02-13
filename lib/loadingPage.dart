import 'package:flutter/material.dart';
import 'package:movie_app/network.dart';
import 'screens/ListScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  initState() {
    super.initState();
    print("initState");
    GetFromApi();
  }

  GetFromApi() async {
    NetworkHelper helper = NetworkHelper();
    var list = await helper.getProductList();
    // print(list);
    // var res = await helper.getMovie();
    // Navigator.push(context,
    //     MaterialPageRoute(builder: (context) => ListScreen(movie: res)));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SpinKitDoubleBounce(
      color: Colors.white,
      size: 200,
    ));
  }
}
