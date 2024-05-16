import 'package:get/get.dart';
import 'package:workapp/main.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => const MyApp(), fenix: true);
  }
}
