import 'package:flutter/material.dart';

class CompanyLoadingView extends StatelessWidget {
  const CompanyLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Loading"),
      ),
    );
  }
}
