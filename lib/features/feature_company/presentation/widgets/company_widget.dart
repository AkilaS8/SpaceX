import 'package:flutter/material.dart';
import 'package:space_x/features/feature_company/domain/entitites/response/company_data_entity.dart';

class CompanyBodyWidget extends StatelessWidget {
  final CompanyDataModelEntity company;

  CompanyBodyWidget({required this.company});

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
              company.summary.toString(),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30.0),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 120.0,
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "Location",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ListView(
                  children: [
                    Text(
                      company.name.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.founder.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.founded.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.employees.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.vehicles.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.launchSites.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.testSites.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.ceo.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.cto.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.coo.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.ctoPropulsion.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      company.valuation.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
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
