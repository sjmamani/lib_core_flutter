import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lib_core_flutter/widgets/buttons/l2_primary_button.dart';

void main() {
  testWidgets('L2PrimaryButton has a child with a Text widget', (tester) async {
    const childWidget = Text('Test');

    await tester.pumpWidget(const L2PrimaryButton(child: childWidget));

    expect(find.byWidget(childWidget), findsOneWidget);
    expect(find.text('Test'), findsOneWidget);
  });

  testWidgets('L2PrimaryButton is disabled if onPressed is null',
      (tester) async {
    await tester.pumpWidget(const L2PrimaryButton(
      onPressed: null,
      child: Text('Siguiente'),
    ));

    await tester.tap(find.byType(L2PrimaryButton), warnIfMissed: true);

    expect(find.byType(L2PrimaryButton).hitTestable(), findsOneWidget);
  });
}
