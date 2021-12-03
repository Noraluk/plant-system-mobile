import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:plant_system_mobile/models/pump/pump_query_model.dart';
import 'package:plant_system_mobile/models/pump/pump_response_model.dart';
import 'package:plant_system_mobile/repositories/pump/pump_repository.dart';
import 'package:plant_system_mobile/screens/home.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';

import '../repositories/pump/mock/pump_repository.mocks.dart';

void main() {
  late PumpRepository pumpRepository;
  late Widget home;

  setUp(() {
    pumpRepository = MockPumpRepository();
    home = MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: BlocProvider(
          create: (_) => PumpBloc(pumpRepository: pumpRepository),
          child: const Home(),
        ),
      ),
    );
  });

  group('Test Home widget', () {
    testWidgets('Double tap switch button active to inactive ', (tester) async {
      PumpQueryModel query = const PumpQueryModel(isActive: true);
      PumpResponseModel response = PumpResponseModel(pumpId: 1, isActive: true);

      when(pumpRepository.getPump(pumpID: 1, query: query))
          .thenAnswer((_) async => response);

      await tester.pumpWidget(home);
      await tester.tap(find.byType(Switch));
      await tester.pump();

      when(pumpRepository.getPump(pumpID: 1, query: query))
          .thenAnswer((_) async => response);

      await tester.pumpWidget(home);
      await tester.tap(find.byType(Switch));
      await tester.pump();

      expect(find.byType(Switch), findsOneWidget);
    });
  });
}
