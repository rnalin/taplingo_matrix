import 'package:flutter/material.dart';
import 'package:taplingo_matrix/modules/curiosity/data/models/curiosity_model.dart';
import 'package:taplingo_matrix/modules/curiosity/domain/ports/input/get_mars_images_input_port.dart';
import 'package:taplingo_matrix/modules/curiosity/navigation/directions/curiosity_images_screen_directions.dart';
import 'package:taplingo_matrix/modules/curiosity/ui/components/curiosity_image_item.dart';

class CuriosityImagesScreen extends StatelessWidget {
  const CuriosityImagesScreen({
    required this.getMarsImagesInputPort,
    Key? key,
  }) : super(key: key);

  final GetMarsImagesInputPort getMarsImagesInputPort;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Curiosity Images'),
        ),
        body: StreamBuilder<List<CuriosityModel>>(
          stream: getMarsImagesInputPort.getMarsImages(),
          builder: (context, snapshot) {
            final curiosityImages = snapshot.data;
            if (snapshot.hasError) {
              return const Center(
                child: Text('Error'),
              );
            }
            if (curiosityImages == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (curiosityImages.isEmpty) {
              return const Center(
                child: Text('No images found'),
              );
            }
            return ListView.builder(
              itemCount: curiosityImages.length,
              itemBuilder: (context, index) {
                final curiosityImage = curiosityImages[index];
                return CuriosityImageItem(
                    curiosity: curiosityImage,
                    onTap: () {
                      testingFreezedWithCopy();
                      _redirectToCuriosityImageDetails(curiosityImage.img_src);
                    });
              },
            );
          },
        ));
  }

  void _redirectToCuriosityImageDetails(String urlImage) {
    CuriosityImagesScreenDirections(this).goToCuriosityImageDetails(urlImage);
  }

  void testingFreezedWithCopy() {
    print('calling');
    const curiosityA =
        CuriosityModel(id: 1, img_src: 'A', earth_date: '01/01/2022');
    const curiosityB =
        CuriosityModel(id: 2, img_src: 'B', earth_date: '01/01/2022');
    final curiosityACopy = curiosityA.copyWith(id: 2);

    if (curiosityB.id == curiosityACopy.id) {
      print("IDs são iguais");
    } else {
      print("IDs Não são iguais");
    }

    if (curiosityACopy.img_src == curiosityA.img_src) {
      print("Imagens são iguais");
    } else {
      print("Imagens Não são iguais");
    }
  }
}
