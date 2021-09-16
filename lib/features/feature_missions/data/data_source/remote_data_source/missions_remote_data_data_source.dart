import 'dart:convert';

import 'package:space_x/core/constants/api_list.dart';
import 'package:space_x/core/error/exception.dart';
import 'package:space_x/features/feature_missions/data/models/missions_data_model.dart';
import 'package:http/http.dart' as http;

abstract class MissionRemoteDataSource {
  Future<List<MissionsDataModel>> getMissionsDetails();
}

class MissionRemoteDataSourceImpl extends MissionRemoteDataSource {
  final http.Client client;

  MissionRemoteDataSourceImpl({required this.client});

  @override
  Future<List<MissionsDataModel>> getMissionsDetails() async {
    var response = await client.get(Uri.parse(missions_url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data
          .map<MissionsDataModel>((json) => MissionsDataModel.fromJson(json))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
