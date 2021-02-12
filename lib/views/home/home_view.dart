import 'package:flutter/material.dart';
import 'package:portfolio/responsive/orientation_layout.dart';
import 'package:portfolio/responsive/screen_type_layout.dart';
import 'home_view_mobile.dart';
import 'home_view_tablet.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: HomeViewTablet(),
    );
  }
}
