import 'package:flutter/material.dart';
import 'package:taplingo_matrix/core/domain/onboarding.dart';
import 'package:taplingo_matrix/core/ports/input/fetch_onboarding_input_port.dart';
import 'package:taplingo_matrix/modules/onboarding/navigation/directions/onboarding_screen_directions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    required this.fetchOnboardingInputPort,
    Key? key,
  }) : super(key: key);

  final FetchOnboardingInputPort fetchOnboardingInputPort;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            final item = onboarding[index];

            return InkWell(
              onTap: _redirectToLogin,
              child: ListTile(
                title: Text(item.title),
                subtitle: Text(item.description),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: _redirectToLogin,
                ),
              ),
            );
          },
        );
      },
    ));
  }

  void _redirectToLogin() {
    OnboardingScreenDirections(this).goToLogin();
  }

  Widget _loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
