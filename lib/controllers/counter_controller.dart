import 'package:get/get.dart';

class CounterController  extends GetxController{
  RxInt count =0.obs;
  RxString name=''.obs;

  increment(){
    count.value++;
    name.value = 'Marwa';
  }


}