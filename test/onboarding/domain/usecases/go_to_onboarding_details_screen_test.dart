import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:taplingo_matrix/core/ports/input/fetch_onboarding_input_port.dart';
import 'package:taplingo_matrix/core/usecase/fetch_onboarding_use_case.dart';
import 'package:taplingo_matrix/modules/onboarding/ui/onboarding_screen.dart';

class MockFetchOnboardingInputPort extends Mock
    implements FetchOnboardingInputPort {}

FetchOnboardingInputPort mockFetchOnboardingInputPort =
    MockFetchOnboardingInputPort();

main() {
  testWidgets('should has onboarding screen', (WidgetTester tester) async {
    final mockFetchOnboardingUseCase = MockFetchOnboardingUseCase();
    await tester.pumpWidget(
      MaterialApp(
        home: OnboardingScreen(
          fetchOnboardingInputPort: mockFetchOnboardingInputPort,
        ),
      ),
    );
    expect(find.byType(OnboardingScreen), findsOneWidget);
  });
}

class MockFetchOnboardingUseCase extends Mock
    implements FetchOnboardingUseCase {}
