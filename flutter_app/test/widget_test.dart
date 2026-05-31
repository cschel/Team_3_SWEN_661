import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main.dart';

void main() {
  testWidgets('CareConnect app renders home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const CareConnectApp());

    expect(find.text('CareConnect'), findsOneWidget);
  });
}
