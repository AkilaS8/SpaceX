import 'package:flutter/material.dart';
import 'package:space_x/features/feature_rockets/presentation/pages/missions_detailed_page.dart';

class MissionsPage extends StatefulWidget {
  const MissionsPage({Key? key}) : super(key: key);

  @override
  _MissionsPageState createState() => _MissionsPageState();
}

class _MissionsPageState extends State<MissionsPage> {
  // List missionsList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff102039), Color(0xff2A749B)]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Missions"),
        ),
        drawer: Drawer(),
        body: Container(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    title: Text("Mission Name"),
                    subtitle: Text("Mission ID \nMission Manufacture"),
                    isThreeLine: true,
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MissionsDetailedPage()))
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    title: Text("Mission Name"),
                    subtitle: Text("Mission ID\nMission Manufacture"),
                    isThreeLine: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Card(
                  color: Colors.white,
                  child: ListTile(
                    title: Text("Mission Name"),
                    subtitle: Text("Mission ID\nMission Manufacture"),
                    isThreeLine: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
