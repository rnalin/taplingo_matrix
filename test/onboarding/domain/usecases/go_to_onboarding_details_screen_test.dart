import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:taplingo_matrix/core/domain/onboarding.dart';
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

    when(mockFetchOnboardingUseCase.fetchOnboarding()).thenAnswer((_) async* {
      yield List<Onboarding>.generate(
          10,
          (index) =>
              Onboarding(title: 'title $index', description: 'content $index'));
    });

    await tester.pumpWidget(
      MaterialApp(
        home: OnboardingScreen(
          fetchOnboardingInputPort: mockFetchOnboardingUseCase,
        ),
      ),
    );
    expect(find.byType(OnboardingScreen), findsOneWidget);
  });
}

class MockFetchOnboardingUseCase extends Mock
    implements FetchOnboardingUseCase {}
