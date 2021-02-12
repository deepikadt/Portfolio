import 'package:flutter/material.dart';

import 'app_drawer.dart';

class AppDrawerMobile extends StatelessWidget {
  const AppDrawerMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      width: orientation == Orientation.portrait ? 250 : 100,
      decoration: BoxDecoration(color: Colors.blue, boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: Colors.black12,
        )
      ]),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Center(
                child: Text("Deepika",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))),
          ),
          Column(
            children: AppDrawer.getDrawerOptions(),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Copyright © 2021 | Deepika',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
