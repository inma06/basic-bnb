import 'package:basic_bnb/src/controller/route_service.dart';
import 'package:basic_bnb/src/view/pages/chat/chat_page.dart';
import 'package:basic_bnb/src/view/pages/feed/feed_page.dart';
import 'package:basic_bnb/src/view/pages/home/home_page.dart';
import 'package:basic_bnb/src/view/pages/me/me_page.dart';
import 'package:basic_bnb/src/view/pages/near/near_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class App extends GetView<RouteService> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          switch (RouteName.values[controller.currentIndex.value]) {
            case RouteName.home:
              return HomePage();
            case RouteName.feed:
              return FeedPage();
            case RouteName.near:
              return NearPage();
            case RouteName.chat:
              return ChatPage();
            case RouteName.me:
              return MePage();
          }
        },
      ),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 10.sp,
            unselectedFontSize: 10.sp,
            onTap: controller.changePageIndex,
            currentIndex: controller.currentIndex.value,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_filled),
                label: "홈",
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.feed_outlined),
                activeIcon: Icon(Icons.feed),
                label: "피드",
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.edit_location_alt_outlined),
                activeIcon: Icon(Icons.edit_location_alt_rounded),
                label: "내근처",
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined),
                activeIcon: Icon(Icons.chat),
                label: "채팅",
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: "내정보",
                backgroundColor: Colors.transparent,
              ),
            ],
          );
        },
      ),
    );
  }
}
