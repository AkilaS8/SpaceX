import 'package:flutter/material.dart';

class NextLaunchSection extends StatelessWidget {
  const NextLaunchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Card(
          child: Text("Akila"),
        ),
      ),
    );
  }
}
