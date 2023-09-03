import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [header(), content(), footer()],
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              print("씨니어 탭");
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/images/app_icon_1.png',
                  width: 70,
                ),
                Text(
                  '씨니어',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32, color: Colors.black),
                ),
              ],
            ),
          ),
          Row(
            children: [
              menu('메뉴1', () {

              }),
              menu('메뉴2', () {

              }),
              menu('메뉴 3', () {

              }),
            ],
          )
        ],
      ),
    );
  }

  Widget menu(String title, Function onTap) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          print("씨니어 탭");
        },
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32, color: Colors.black),
        ),
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        child: Text('컨텐츠'),
      ),
    );
  }

  Widget footer() {
    return Container(
      child: Text('푸터'),
    );
  }
}
