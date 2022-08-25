import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constant.dart';
import 'components/body.dart';
//import 'package:plant_app/constant.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(height: 80, 
      decoration: BoxDecoration(
        boxShadow:[
          BoxShadow(
          offset: Offset(0, -10),
          blurRadius:35,
          color: kPrimaryColor.withOpacity(0.38),
        ),
        ],
      ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      //title: Text('App Bar'),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      backgroundColor: kPrimaryColor,
    );
  }
}
