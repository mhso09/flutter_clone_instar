import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/image_data.dart';
import 'controller/btm_nav_controller.dart';
import 'pages/home.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.willPopAction,
      child: Obx(
        () => Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              const Home(),
              Container(
                child: Center(child: Text('search')),
              ),
              Container(
                child: Center(child: Text('upload')),
              ),
              Container(
                child: Center(child: Text('activity')),
              ),
              Container(
                child: Center(child: Text('mypage')),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: controller.changeBottomNav,
            items: [
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.homeOff),
                  activeIcon: ImageData(IconsPath.homeOn),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.searchOff),
                  activeIcon: ImageData(IconsPath.searchOn),
                  label: 'search'),
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.uploadIcon), label: 'upload'),
              BottomNavigationBarItem(
                  icon: ImageData(IconsPath.activeOff),
                  activeIcon: ImageData(IconsPath.activeOn),
                  label: '합'),
              BottomNavigationBarItem(
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                  ),
                  label: '가'),
            ],
          ),
        ),
      ),
    );
  }
}
