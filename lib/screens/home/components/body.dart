import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_bbtn.dart';
import 'header_with_seachbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //it will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {}
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {}
          ),
          FeaturedPlants(),
          SizedBox(height: kDefualtPadding),
        ],
      ),
    );
  }
}
class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:<Widget> [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
            ),
            FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
            ),
        ],
      ),
    );
  }
}

