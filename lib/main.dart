import 'package:flutter/material.dart';
import 'package:taplingo_matrix/core/initializer.dart';
import 'package:taplingo_matrix/core/routes/app_navigator.dart';
import 'package:taplingo_matrix/core/routes/routes.dart';
import 'package:taplingo_matrix/modules/curiosity/data/models/curiosity_model.dart';

void main() {
  Initializer.initialize();

  runApp(const MyApp());
  /*  void getCuriosity() {
    const curiosityA = CuriosityModel(
      id: 1,
      urlImage:
          "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA16225_hires.jpg",
      earthDate: "2020-06-03",
    );

    const curiosityB = CuriosityModel(
      id: 2,
      urlImage:
          "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA16225_hires.jpg",
      earthDate: "2020-07-07",
    );

    final curiosityCopyA = curiosityA.copyWith(
      id: 2,
    );

    if (curiosityB.id == curiosityCopyA.id) {
      print("São iguais");
    } else {
      print("Não são iguais");
    }
  } */
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: AppNavigator.navigatorKey,
      onGenerateRoute: Routes.generateRoute(false),
    );
  }
}
