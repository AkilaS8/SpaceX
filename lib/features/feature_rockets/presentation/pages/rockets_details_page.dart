import 'package:flutter/material.dart';
import 'package:space_x/core/constants/colors.dart';
import 'package:space_x/features/feature_rockets/domain/entities/response/rockets_data_entity.dart';
import 'package:space_x/features/feature_rockets/presentation/widgets/image_slider_widget.dart';

class RocketDetailsPage extends StatelessWidget {
  RocketDataEntity rocket;

  RocketDetailsPage({required this.rocket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppbarColor,
        title: Text(
          rocket.rocketName.toString(),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){},
        ),
      ),
      body: Column(
        children: [
          ImageSliderWidget(imgList: rocket.flickrImages),
        ],
      ),
    );
  }
}
