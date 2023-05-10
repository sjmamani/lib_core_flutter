import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lib_core_flutter/widgets/buttons/l2_link_button.dart';
import 'package:lib_core_flutter/widgets/buttons/l2_primary_button.dart';
import 'package:lib_core_flutter/widgets/l2_alert_dialog.dart';

bool isDialogOpened = false;
showL2AlertDialog(BuildContext context, L2AlertDialog dialog) {
  if (isDialogOpened) {
    Navigator.pop(context);
    isDialogOpened = false;
  }
  showDialog(
    context: context,
    builder: (BuildContext context) {
      isDialogOpened = true;
      return dialog;
    },
  ).then((_) => isDialogOpened = false);
}

void main() {
  testWidgets('L2AlertDialog shows only content', (tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    const childWidget = Text('Test');

    await tester.pumpWidget(MaterialApp(home: Scaffold(key: scaffoldKey)));

    expect(isDialogOpened, false);

    showL2AlertDialog(
      scaffoldKey.currentContext!,
      const L2AlertDialog(content: childWidget),
    );

    await tester.pump();
    expect(isDialogOpened, true);

    expect(find.byWidget(childWidget), findsOneWidget);
    expect(find.byType(L2PrimaryButton), findsNothing);
    expect(find.byType(L2LinkButton), findsNothing);

    // Close alert dialog
    await tester.tapAt(const Offset(0.0, 0.0));
    await tester.pump();
    expect(isDialogOpened, false);
  });

  testWidgets('L2AlertDialog shows title and content with no buttons',
      (tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    const childWidget = Text('Test');

    await tester.pumpWidget(MaterialApp(home: Scaffold(key: scaffoldKey)));

    expect(isDialogOpened, false);

    showL2AlertDialog(
      scaffoldKey.currentContext!,
      const L2AlertDialog(content: childWidget, title: 'Test title'),
    );

    await tester.pump();
    expect(isDialogOpened, true);

    expect(find.byWidget(childWidget), findsOneWidget);
    expect(find.text('Test title'), findsOneWidget);
    expect(find.byType(L2PrimaryButton), findsNothing);
    expect(find.byType(L2LinkButton), findsNothing);

    // Close alert dialog
    await tester.tapAt(const Offset(0.0, 0.0));
    await tester.pump();
    expect(isDialogOpened, false);
  });

  testWidgets('L2AlertDialog shows title, content and L2LinkButton',
      (tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    const childWidget = Text('Test');

    await tester.pumpWidget(MaterialApp(home: Scaffold(key: scaffoldKey)));

    expect(isDialogOpened, false);

    showL2AlertDialog(
      scaffoldKey.currentContext!,
      const L2AlertDialog(
        content: childWidget,
        title: 'Test title',
        textCancelButton: 'Volver',
      ),
    );

    await tester.pump();
    expect(isDialogOpened, true);

    expect(find.byWidget(childWidget), findsOneWidget);
    expect(find.text('Test title'), findsOneWidget);
    expect(find.byType(L2PrimaryButton), findsNothing);
    expect(find.byType(L2LinkButton), findsOneWidget);

    // Close alert dialog
    await tester.tapAt(const Offset(0.0, 0.0));
    await tester.pump();
    expect(isDialogOpened, false);
  });

  testWidgets('L2AlertDialog shows title, content and L2PrimaryButton',
      (tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    const childWidget = Text('Test');

    await tester.pumpWidget(MaterialApp(home: Scaffold(key: scaffoldKey)));

    expect(isDialogOpened, false);

    showL2AlertDialog(
      scaffoldKey.currentContext!,
      L2AlertDialog(
        content: childWidget,
        title: 'Test title',
        actionButton: L2PrimaryButton(
          child: const Text('Aceptar'),
          onPressed: () {},
        ),
      ),
    );

    await tester.pump();
    expect(isDialogOpened, true);

    expect(find.byWidget(childWidget), findsOneWidget);
    expect(find.text('Test title'), findsOneWidget);
    expect(find.byType(L2PrimaryButton), findsOneWidget);
    expect(find.byType(L2LinkButton), findsNothing);

    // Close alert dialog
    await tester.tapAt(const Offset(0.0, 0.0));
    await tester.pump();
    expect(isDialogOpened, false);
  });

  testWidgets(
      'L2AlertDialog shows title, content, L2PrimaryButton and L2LinkButton',
      (tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    const childWidget = Text('Test');

    await tester.pumpWidget(MaterialApp(home: Scaffold(key: scaffoldKey)));

    expect(isDialogOpened, false);

    showL2AlertDialog(
      scaffoldKey.currentContext!,
      L2AlertDialog(
        content: childWidget,
        title: 'Test title',
        textCancelButton: 'Volver',
        actionButton: L2PrimaryButton(
          child: const Text('Aceptar'),
          onPressed: () {},
        ),
      ),
    );

    await tester.pump();
    expect(isDialogOpened, true);

    expect(find.byWidget(childWidget), findsOneWidget);
    expect(find.text('Test title'), findsOneWidget);
    expect(find.byType(L2PrimaryButton), findsOneWidget);
    expect(find.byType(L2LinkButton), findsOneWidget);

    // Close alert dialog
    await tester.tapAt(const Offset(0.0, 0.0));
    await tester.pump();
    expect(isDialogOpened, false);
  });
}
