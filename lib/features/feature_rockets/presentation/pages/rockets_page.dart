import 'package:flutter/material.dart';

class RocketsPage extends StatefulWidget {
  const RocketsPage({Key? key}) : super(key: key);

  @override
  _RocketsPageState createState() => _RocketsPageState();
}

class _RocketsPageState extends State<RocketsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Rockets")),
    );
  }
}
