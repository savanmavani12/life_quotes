import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/globals.dart';

drawer({required BuildContext context}) {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.primaries[Random().nextInt(Colors.accents.length)],
                  Colors.accents[Random().nextInt(Colors.primaries.length)],
                ],
              ),
            ),
            child: Text(
              "Life Quotes and\nSayings",
              textAlign: TextAlign.center,
              style: GoogleFonts.dancingScript(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          ...drawerItems.map(
            (e) => ListTile(
              onTap: () {
                if (e.title == "By Topic") {
                  Global.authorCategory = false;
                  Navigator.of(context).pushNamed("TopicAndAuthorPage");
                } else if (e.title == "By Author") {
                  Global.authorCategory = true;
                  Navigator.of(context).pushNamed("TopicAndAuthorPage");
                }
                else if(e.title == "Favourite"){
                  Global.favorite = true;
                  Navigator.of(context).pushNamed("FavouritePage");
                }
              },
              leading: Icon(
                e.icon,
                color: e.color,
                size: 25,
              ),
              title: Text(
                e.title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff666666),
                ),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Text(
              "Communicate",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: const Color(0xff666666),
              ),
            ),
          ),
          ...drawerItems2.map(
            (e) => ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("AboutPage");
              },
              leading: Icon(
                e.icon,
                color: const Color(0xff666666),
                size: 25,
              ),
              title: Text(
                e.title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff666666),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

List<DrawerItem> drawerItems = [
  DrawerItem(
    icon: Icons.topic_outlined,
    title: "By Topic",
    color: Colors.green,
  ),
  DrawerItem(
    icon: Icons.person,
    title: "By Author",
    color: Colors.grey,
  ),
  DrawerItem(
    icon: Icons.star,
    title: "Favourite",
    color: Colors.orange.shade500,
  ),
  DrawerItem(
    icon: Icons.lightbulb,
    title: "Quote of the Day",
    color: Colors.yellow,
  ),
  DrawerItem(
    icon: Icons.star,
    title: "Favourite Pictures",
    color: Colors.orange.shade300,
  ),
  DrawerItem(
    icon: Icons.ondemand_video,
    title: "Videos",
    color: Colors.red.shade500,
  ),
];

List<DrawerItem2> drawerItems2 = [
  DrawerItem2(
    icon: Icons.settings,
    title: "Settings",
  ),
  DrawerItem2(
    icon: Icons.share_outlined,
    title: "Share",
  ),
  DrawerItem2(
    icon: Icons.rate_review,
    title: "Rate",
  ),
  DrawerItem2(
    icon: Icons.feedback,
    title: "Feedback",
  ),
  DrawerItem2(
    icon: Icons.info_outline,
    title: "About",
  ),
];

class DrawerItem {
  final IconData icon;
  final String title;
  final Color color;

  DrawerItem({
    required this.icon,
    required this.title,
    required this.color,
  });
}

class DrawerItem2 {
  final IconData icon;
  final String title;

  DrawerItem2({
    required this.icon,
    required this.title,
  });
}
