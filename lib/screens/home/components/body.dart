import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recomend_plant.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

import 'featured_plants.dart';
import 'header_with_serchbox.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: (){},),
          RecomendPlant(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: (){},
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ]
      ),
    );
  }
}

