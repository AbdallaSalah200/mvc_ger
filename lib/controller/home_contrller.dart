import 'package:get/state_manager.dart';

class HomeController extends GetxController{
  RxInt counter =0.obs ;
  void increment (){
     counter++;
    // update();
  }
  void decrement (){
     counter--;
    //   update();
  }
}