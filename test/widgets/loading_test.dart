import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plant_system_mobile/widgets/loading.dart';

void main() {
  testWidgets('Test Loading', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Loading(),
    ));
    await tester.pump();

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
