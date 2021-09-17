import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_x/core/constants/colors.dart';

class DrawerHeaderWidget extends StatefulWidget {
  const DrawerHeaderWidget({Key? key}) : super(key: key);

  @override
  _DrawerHeaderWidgetState createState() => _DrawerHeaderWidgetState();
}

class _DrawerHeaderWidgetState extends State<DrawerHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 250.0,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 150,
           child: Image(
             image: AssetImage('assets/images/space_x_1.png'),
           ),
          ),
          Text(
            "User Name",
            style: TextStyle(
              color: kAppbarColor,
              fontSize: 16.0,
            ),
          ),
          Text(
            "User email",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
