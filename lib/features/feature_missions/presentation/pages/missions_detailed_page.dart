import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_x/core/constants/colors.dart';

class MissionsDetailedPage extends StatelessWidget {
  const MissionsDetailedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: kBackgroundGradient,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Mission Name"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Mission Name",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Mission ID",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Manufacture",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Description: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem "
                      " Ipsum.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "More Details:",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                    child: Container(
                      width: 120.0,
                      child: Row(
                        children: [
                          Container(
                              height: 30.0,
                              width: 30.0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Image.asset("assets/images/newspaper.png"),
                              )),
                          Text("Articles"),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                    child: Container(
                      width: 120.0,
                      child: Row(
                        children: [
                          Container(
                              height: 30.0,
                              width: 30.0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                    "assets/images/wikipedia-logo.png"),
                              )),
                          Text("Wikipedia"),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                    child: Container(
                      width: 120.0,
                      child: Row(
                        children: [
                          Container(
                              height: 30.0,
                              width: 30.0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/images/twitter.png"),
                              )),
                          Text("Twitter"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
