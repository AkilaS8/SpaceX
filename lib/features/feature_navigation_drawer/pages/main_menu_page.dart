import 'package:flutter/material.dart';
import 'package:space_x/core/constants/colors.dart';
import 'package:space_x/core/constants/constants.dart';
import 'package:space_x/core/custom_icons/custom_icons_icons.dart';
import 'package:space_x/features/feature_about/pages/about_page.dart';
import 'package:space_x/features/feature_company/presentation/pages/company_page.dart';
import 'package:space_x/features/feature_history/presentation/pages/history_page.dart';
import 'package:space_x/features/feature_home/home_page.dart';
import 'package:space_x/features/feature_missions/presentation/pages/missions_page.dart';
import 'package:space_x/features/feature_navigation_drawer/widgets/drawer_body_widget.dart';
import 'package:space_x/features/feature_navigation_drawer/widgets/drawer_header_widget.dart';
import 'package:space_x/features/feature_vehicles/screens/vehicles_page.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  var currentPage = DrawerSection.Home;
  String mainTitle = DrawerNameList.nameList(DrawerSection.Home);

  @override
  Widget build(BuildContext context) {
    var container;

    if (currentPage == DrawerSection.Home) {
      container = HomePage();
      mainTitle = DrawerNameList.nameList(DrawerSection.Home);
    } else if (currentPage == DrawerSection.Launches) {
      container = HomePage();
      mainTitle = DrawerNameList.nameList(DrawerSection.Launches);
    } else if (currentPage == DrawerSection.Vehicles) {
      container = VehiclesPage();
      mainTitle = DrawerNameList.nameList(DrawerSection.Vehicles);
    } else if (currentPage == DrawerSection.Missions) {
      container = MissionsPage();
      mainTitle = DrawerNameList.nameList(DrawerSection.Missions);
    } else if (currentPage == DrawerSection.History) {
      container = HistoryPage();
      mainTitle = DrawerNameList.nameList(DrawerSection.History);
    }
    else if (currentPage == DrawerSection.Company) {
      container = CompanyPage();
      mainTitle = DrawerNameList.nameList(DrawerSection.Company);
    } else if (currentPage == DrawerSection.About) {
      container = AboutPage();
      mainTitle = DrawerNameList.nameList(DrawerSection.About);
    } else if (currentPage == DrawerSection.Logout) {
      container = HomePage();
      mainTitle = DrawerNameList.nameList(DrawerSection.Logout);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppbarColor,
        title: Text(mainTitle),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeaderWidget(),
              drawerList(),
            ],
          ),
        ),
      ),
    );
  }

  //Menu Item
  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? kDrawerSelected : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSection.Home;
            } else if (id == 2) {
              currentPage = DrawerSection.Launches;
            } else if (id == 3) {
              currentPage = DrawerSection.Vehicles;
            } else if (id == 4) {
              currentPage = DrawerSection.Missions;
            } else if (id == 5) {
              currentPage = DrawerSection.History;
            } else if (id == 6) {
              currentPage = DrawerSection.Company;
            } else if (id == 7) {
              currentPage = DrawerSection.About;
            } else if (id == 8) {
              currentPage = DrawerSection.Logout;
            }
          });
        },
        child: DrawerBody(
          title: title,
          iconData: icon,
        ),
      ),
    );
  }

  //Drawer List
  Widget drawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(1, DrawerNameList.nameList(DrawerSection.Home), CustomIcons.dashboard, currentPage == DrawerSection.Home ? true : false),
          menuItem(2, DrawerNameList.nameList(DrawerSection.Launches), CustomIcons.launch, currentPage == DrawerSection.Launches ? true : false),
          menuItem(3, DrawerNameList.nameList(DrawerSection.Vehicles), CustomIcons.rocket_1, currentPage == DrawerSection.Vehicles ? true : false),
          Divider(),
          menuItem(4, DrawerNameList.nameList(DrawerSection.Missions), CustomIcons.mission, currentPage == DrawerSection.Missions ? true : false),
          menuItem(5, DrawerNameList.nameList(DrawerSection.History), CustomIcons.history, currentPage == DrawerSection.History ? true : false),
          menuItem(6, DrawerNameList.nameList(DrawerSection.Company), CustomIcons.office, currentPage == DrawerSection.Company ? true : false),
          Divider(),
          menuItem(7, DrawerNameList.nameList(DrawerSection.About), CustomIcons.about, currentPage == DrawerSection.About ? true : false),
          menuItem(8, DrawerNameList.nameList(DrawerSection.Logout), CustomIcons.logout, currentPage == DrawerSection.Logout ? true : false),
        ],
      ),
    );
  }
}
