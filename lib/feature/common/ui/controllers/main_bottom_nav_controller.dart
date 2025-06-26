import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MainBottomNavController extends GetxController {
  int _currentIndex = 0;

  int get selectedIndex => _currentIndex;

  void changeIndex(int index) {
    if (index == _currentIndex) {
      return;
    }
    _currentIndex = index;
    update();
  }

  void moveToCategory() {
    changeIndex(1);
  }

  void backTohome() {
    changeIndex(0);
  }
}
