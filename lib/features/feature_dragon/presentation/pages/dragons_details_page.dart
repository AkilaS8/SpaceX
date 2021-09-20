import 'package:flutter/material.dart';
import 'package:space_x/core/constants/colors.dart';
import 'package:space_x/features/feature_dragon/domain/entities/response/dragons_data_entity.dart';
import 'package:space_x/features/feature_rockets/presentation/widgets/image_slider_widget.dart';

class DragonDetailsPage extends StatelessWidget {
  DragonDataEntity dragon;

  DragonDetailsPage({required this.dragon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppbarColor,
        title: Text(
          dragon.name.toString(),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          ImageSliderWidget(imgList: dragon.flickrImages),
        ],
      ),
    );
  }
}
