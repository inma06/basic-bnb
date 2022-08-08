import 'package:basic_bnb/src/controller/route_service.dart';
import 'package:get/instance_manager.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RouteService());
  }
}
