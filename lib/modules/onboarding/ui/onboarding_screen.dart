import 'package:flutter/material.dart';
import 'package:taplingo_matrix/core/domain/entities/onboarding_entity.dart';
import 'package:taplingo_matrix/core/domain/onboarding.dart';
import 'package:taplingo_matrix/core/ports/input/fetch_onboarding_input_port.dart';
import 'package:taplingo_matrix/modules/curiosity/domain/ports/input/get_mars_images_input_port.dart';
import 'package:taplingo_matrix/modules/onboarding/navigation/directions/onboarding_screen_directions.dart';

part './components/onboarding_item.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    required this.fetchOnboardingInputPort,
    Key? key,
  }) : super(key: key);

  final FetchOnboardingInputPort fetchOnboardingInputPort;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Onboarding'),
          actions: [
            PopupMenuButton<String>(
              onSelected: handleClick,
              itemBuilder: (BuildContext context) {
                return {'Curiosity Images', 'Settings'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: StreamBuilder<List<Onboarding>>(
          stream: fetchOnboardingInputPort.fetchOnboarding(),
          builder: (context, snapshot) {
            final onboarding = snapshot.data;

            if (onboarding == null) {
              return _loading();
            }

            return ListView.builder(
              itemCount: onboarding.length,
              itemBuilder: (context, index) {
                return OnboardingItem(
                    onboarding: onboarding[index],
                    onTap: () =>
                        _redirectToOnboardingDetails(onboarding[index]));
              },
            );
          },
        ));
  }

  void _redirectToLogin() {
    OnboardingScreenDirections(this).goToLogin();
  }

  void _redirectToCuriosityImages() {
    OnboardingScreenDirections(this).goToCuriosityImages();
  }

  void _redirectToOnboardingDetails(OnboardingEntity onboarding) {
    OnboardingScreenDirections(this).goToOnboardingDetails(onboarding);
  }

  Widget _loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Curiosity Images':
        _redirectToCuriosityImages();
        break;
      case 'Settings':
        break;
    }
  }
}
