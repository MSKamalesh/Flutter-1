import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_explorer/main.dart';

void main() {
  testWidgets('Travel Home Page Smoke Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the initial text 'Hi, David 👋' is present.
    expect(find.text('Hi, David 👋'), findsOneWidget);

    // Verify that the search field is present.
    expect(find.byType(TextField), findsOneWidget);

    // Verify that the 'Popular places' text is present.
    expect(find.text('Popular places'), findsOneWidget);

    // Verify that the buttons 'Most Viewed', 'Nearby', and 'Latest' are present.
    expect(find.text('Most Viewed'), findsOneWidget);
    expect(find.text('Nearby'), findsOneWidget);
    expect(find.text('Latest'), findsOneWidget);

    // Verify that the place cards are present.
    expect(find.text('Mount Fuji, Tokyo'), findsOneWidget);
    expect(find.text('Andes, South'), findsOneWidget);
  });
}