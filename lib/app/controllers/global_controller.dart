import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GlobalController extends GetxController {
  RxString userId = 'DDFFEFEFE'.obs;
  final box = GetStorage();
}
