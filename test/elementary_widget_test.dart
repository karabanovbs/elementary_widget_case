import 'package:elementary_widget_case/elementary_widget/elementary_widget_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('change widget param test', (widgetTester) async {
    await widgetTester.pumpWidget(const ElementaryWidgetScreen('test'));

    expect(find.text('test'), findsOneWidget);

    await widgetTester.pumpWidget(const ElementaryWidgetScreen('other text'));

    expect(find.text('other text'), findsOneWidget);
  });
}
