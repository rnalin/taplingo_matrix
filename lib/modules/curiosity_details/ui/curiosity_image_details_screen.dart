import 'package:flutter/material.dart';

class CuriosityImageDetailsScreen extends StatelessWidget {
  const CuriosityImageDetailsScreen({Key? key, required this.urlImage})
      : super(key: key);
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    //return fullscreen image
    return Scaffold(
        body: Container(
      color: Colors.black,
      height: double.infinity,
      width: double.infinity,
      child: Image(
        image: NetworkImage(urlImage),
      ),
    ));
  }
}
