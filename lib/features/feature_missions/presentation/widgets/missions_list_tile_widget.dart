import 'package:flutter/material.dart';
import 'package:space_x/features/feature_missions/domain/entities/response/missions_data_entity.dart';
import 'package:space_x/features/feature_missions/presentation/pages/missions_detailed_page.dart';

class MissionsListTile extends StatelessWidget {
  final MissionsDataModelEntity mission;

  MissionsListTile({required this.mission});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            child: Card(
              color: Colors.white,
              child: ListTile(
                title: Text(
                  mission.missionName.toString(),
                ),
                subtitle: Text(
                  mission.missionId.toString() +
                      mission.manufacturers.toString(),
                ),
                isThreeLine: true,
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MissionsDetailedPage()),
                  )
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//missions widget