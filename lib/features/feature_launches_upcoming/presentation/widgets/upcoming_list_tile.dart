import 'package:flutter/material.dart';
import 'package:space_x/features/feature_launches_upcoming/domain/entities/response/upcoming_data_entity.dart';

class UpcomingListTile extends StatelessWidget {
  final UpcomingDataModelEntity upcoming;

  UpcomingListTile({
    required this.upcoming
});

  @override
  Widget build(BuildContext context) {
  return Container(
    child: Column(
      children: [
        Text(upcoming.flightNumber.toString(),),
        Text(upcoming.missionName.toString(),),
      ],
    ),
  );
  }
}
