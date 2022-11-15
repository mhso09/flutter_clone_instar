import 'package:get/get.dart';
import 'package:ingsta/screens/controller/btm_nav_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
  }
}
