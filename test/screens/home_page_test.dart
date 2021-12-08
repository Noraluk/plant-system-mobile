import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/screens/home_page.dart';
import 'package:plant_system_mobile/widget/loading.dart';

class MockPumpBloc extends MockBloc<PumpEvent, PumpState> implements PumpBloc {}

extension on WidgetTester {
  Future<void> pumpHomeWidget(PumpBloc pumpBloc, Widget child) {
    return pumpWidget(MaterialApp(
      home: BlocProvider.value(value: pumpBloc, child: child),
    ));
  }
}

void main() {
  late PumpBloc pumpBloc;

  setUp(() {
    pumpBloc = MockPumpBloc();
  });

  group('Test HomePage widget', () {
    testWidgets('render HomeView', (tester) async {
      when(() => pumpBloc.state).thenReturn(PumpInitial());
      await tester.pumpHomeWidget(pumpBloc, const HomePage());
      expect(find.byType(HomeView), findsOneWidget);
    });
  });

  group('Test HomeView widget', () {
    testWidgets('Load pump and tab switch', (tester) async {
      const int id = 1;
      const bool isActive = true;

      when(() => pumpBloc.state)
          .thenReturn(const PumpLoadedState(id: id, isActive: isActive));
      await tester.pumpHomeWidget(pumpBloc, const HomeView());
      await tester.pump();
      await tester.tap(find.byType(Switch));

      Finder finder = find.byWidgetPredicate(
          (widget) => widget is Switch && widget.value == isActive,
          description: 'Switch is enabled');

      expect(finder, findsOneWidget);
    });

    testWidgets('Waiting for loading pump', (tester) async {
      when(() => pumpBloc.state).thenReturn(PumpLoading());
      await tester.pumpHomeWidget(pumpBloc, const HomeView());
      await tester.pump();

      expect(find.byType(Loading), findsOneWidget);
    });
  });

  tearDown(() {
    reset(pumpBloc);
  });
}
