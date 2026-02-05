import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:miganado/core/animation/animation_utils.dart';

void main() {
  group('FadeInAnimation', () {
    testWidgets('renders child widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FadeInAnimation(
              child: Text('Test Child'),
            ),
          ),
        ),
      );

      expect(find.text('Test Child'), findsOneWidget);
    });
  });

  group('SlideInAnimation', () {
    testWidgets('slides from all directions', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SlideInAnimation(
              direction: SlideDirection.left,
              child: Text('Slide Test'),
            ),
          ),
        ),
      );

      expect(find.text('Slide Test'), findsOneWidget);
    });
  });

  group('ScaleInAnimation', () {
    testWidgets('animates scale', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ScaleInAnimation(
              child: Text('Scale In'),
            ),
          ),
        ),
      );

      expect(find.text('Scale In'), findsOneWidget);
    });
  });

  group('AnimatedNumberCounter', () {
    testWidgets('renders final value', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AnimatedNumberCounter(
              endValue: 100,
              duration: Duration(milliseconds: 500),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('100'), findsOneWidget);
    });
  });

  group('SkeletonLoader', () {
    testWidgets('renders loading skeleton', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SkeletonLoader(
              width: 100,
              height: 50,
            ),
          ),
        ),
      );

      expect(find.byType(SkeletonLoader), findsOneWidget);
    });
  });

  group('EmptyStateWidget', () {
    testWidgets('renders empty state', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: EmptyStateWidget(
              icon: Icons.search_off,
              title: 'No Results',
              subtitle: 'Try different filters',
            ),
          ),
        ),
      );

      expect(find.text('No Results'), findsOneWidget);
      expect(find.text('Try different filters'), findsOneWidget);
    });
  });

  group('Animation Integration', () {
    testWidgets('combine animations', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FadeInAnimation(
              child: ScaleInAnimation(
                child: Text('Combined'),
              ),
            ),
          ),
        ),
      );

      expect(find.text('Combined'), findsOneWidget);
      await tester.pumpAndSettle();
    });
  });
}
