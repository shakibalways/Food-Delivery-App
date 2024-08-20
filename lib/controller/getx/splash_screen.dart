
import 'package:food_delivery_app/views/pages/auth/login_or_register/login_or_register.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTo();

  }
  getTo()async{
    await Future.delayed(const Duration(seconds: 5), () {

      Get.offAll(() =>  const LoginOrRegister());
    });
  }
}