import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seenear_admin/const/seenear_color.dart';
import 'package:seenear_admin/home_controller.dart';
import 'package:seenear_admin/side_menu/side_menu1_screen.dart';

import 'side_menu/side_menu2_screen.dart';
import 'side_menu/side_menu3_screen.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // alignment: Alignment.center,
          // 1280 해상도에 맞추기
          // constraints: BoxConstraints(maxWidth: 1280),
          child: Column(
            children: [
              header(),
              Expanded(child: content()),
              footer(),
            ],
          ),
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
              menu('메뉴1', () {}),
              menu('메뉴2', () {}),
              menu('메뉴 3', () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget menu(String title, Function onTap) {
    return Padding(
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
    return Obx(() {
      return Container(
        child: Row(
          children: [
            /// 사이드 메뉴
            Container(
              width: 150,
              color: SeenearColor.blue10,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      controller.sideMenuIndex.value = 0;
                    },
                    child: Text("사이드메뉴1"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.sideMenuIndex.value = 1;
                    },
                    child: Text("사이드메뉴2"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.sideMenuIndex.value = 2;
                    },
                    child: Text("사이드메뉴3"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(child: contentBySideMenu()),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget contentBySideMenu() {
    switch (controller.sideMenuIndex.value) {
      case 0:
        return SideMenu1Screen();
      case 1:
        return SideMenu2Screen();
      case 2:
        return SideMenu3Screen();
      default:
        return Container();
    }
  }

  Widget footer() {
    return Container(
      color: SeenearColor.grey5,
      alignment: Alignment.centerLeft,
      child: Text(
        '푸터 영역입니다.\n 사업자 정보 등등 ',
        style: TextStyle(
          fontSize: 14,
          color: SeenearColor.grey30,
        ),
      ),
    );
  }
}
