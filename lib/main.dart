import 'package:flutter/material.dart';
import 'package:space_x/features/feature_company/presentation/pages/company_page.dart';
import 'package:space_x/features/feature_missions/presentation/pages/missions_page.dart';
import 'package:space_x/features/feature_rockets/presentation/pages/rockets_page.dart';
import 'package:space_x/features/feature_vehicles/screens/vehicles_page.dart';
import 'injection_container.dart' as di;
import 'package:space_x/features/feature_lunches/presentation/pages/launches_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff102039),
      ),
      home: LaunchesPage(),
    );
  }
}