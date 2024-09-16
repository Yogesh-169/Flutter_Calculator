import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prj1/App/app.dart';

void main()
{
  testWidgets("Hello Dosto Test", (WidgetTester tester)
  async{
    await tester.pumpWidget(const MyApp());
    
    expect(find.byType(Container), findsOneWidget);
  });
}