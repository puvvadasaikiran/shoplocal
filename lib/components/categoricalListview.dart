import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class categoricalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          makeCategory(Icons.dashboard, "Shirts"),
          makeCategory(Icons.dashboard, "Dress"),
          makeCategory(Icons.dashboard, "Pants"),
          makeCategory(Icons.dashboard, "Formals"),
          makeCategory(Icons.dashboard, "Informal"),
          makeCategory(Icons.dashboard, "Shoes"),
          makeCategory(Icons.dashboard, "Others"),
          makeCategory(Icons.dashboard, "hell"),
        ],
      ),
    );
  }

  Widget makeCategory(IconData icon, String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 60,
              color: Colors.red,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
