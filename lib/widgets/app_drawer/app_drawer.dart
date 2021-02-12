import 'package:flutter/material.dart';
import 'package:portfolio/responsive/orientation_layout.dart';
import 'package:portfolio/responsive/screen_type_layout.dart';
import 'package:portfolio/widgets/drawer_option/drawer_option.dart';

import 'app_drawer_mobile.dart';
import 'app_drawer_tablet.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: AppDrawerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        title: 'Projects',
        iconData: Icons.work,
      ),
      DrawerOption(
        title: 'Blogs',
        iconData: Icons.book,
      ),
      DrawerOption(
        title: 'About Me',
        iconData: Icons.info,
      ),
      DrawerOption(title: 'Contact', iconData: Icons.phone),
    ];
  }
}
