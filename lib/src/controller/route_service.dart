import 'package:get/get.dart';

enum RouteName {
  home,
  feed,
  near,
  chat,
  me,
}

class RouteService extends GetxService {
  static RouteService get to => Get.find();
  RxInt currentIndex = RouteName.home.index.obs;
  void changePageIndex(int index) {
    currentIndex(index);
  }
}
