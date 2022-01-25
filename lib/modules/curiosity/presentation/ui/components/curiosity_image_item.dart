import 'package:flutter/material.dart';
import 'package:taplingo_matrix/modules/curiosity/data/models/curiosity_model.dart';

class CuriosityImageItem extends StatelessWidget {
  const CuriosityImageItem(
      {Key? key, required this.curiosity, required this.onTap})
      : super(key: key);

  final CuriosityModel curiosity;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: ListTile(
            title: Text('id: ' + curiosity.id.toString()),
            subtitle: Text('Data Terrestre: ' + curiosity.earthDate),
            trailing: Image(
              image: NetworkImage(curiosity.urlImage),
            )));
  }
}
