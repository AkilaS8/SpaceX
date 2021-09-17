import 'package:flutter/material.dart';

class CompanyBodyWidget extends StatefulWidget {
  const CompanyBodyWidget({Key? key}) : super(key: key);

  @override
  _CompanyBodyWidgetState createState() => _CompanyBodyWidgetState();
}

class _CompanyBodyWidgetState extends State<CompanyBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset("assets/images/space_x_2.png"),
            SizedBox(height: 20.0),
            Text(
              "SpaceX designs, manufactures and launches advanced rockets and spacecrafts. The company was founded in 2002 to revolutionize space technology, with the ultimate goal of enabling people to live on other"
                  " planets.",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30.0),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 120.0,
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.white,),
                    SizedBox(width: 10.0),
                    Text("Location", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ListView(
                  children: [
                    Text("Location", style: TextStyle(color: Colors.white),), // NOT VISIBLE IN SCREEN
                    Text("Location", style: TextStyle(color: Colors.white),), // NOT VISIBLE IN SCREEN
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
