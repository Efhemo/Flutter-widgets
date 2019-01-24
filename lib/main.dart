import 'package:flutter/material.dart';
import 'package:flutter_app/stateful_widget.dart';


void main(){
  runApp(Manifest());
}

class Manifest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      home: FavouriteStateless(),

    );
  }


}