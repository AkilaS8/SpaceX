import 'package:flutter/material.dart';
// import 'package:space_x/features/feature_vehicles/screens/vehicles_page.dart';
// import 'injection_container.dart' as di;
import 'package:space_x/features/feature_vehicles/screens/vehicles_page.dart';
import 'injection_container.dart' as di;

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
        primarySwatch: Colors.blue,
      ),
      home: VehiclesPage(),
    );
  }
}