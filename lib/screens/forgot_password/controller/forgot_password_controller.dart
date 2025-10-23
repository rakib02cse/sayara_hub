import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  var email = ''.obs;
  var isLoading = false.obs;

  void sendResetEmail() async {
    if (email.value.isEmpty) {
      Get.snackbar("Error", "Please enter your email");
      return;
    }

    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2)); 
    isLoading.value = false;

    try {
      Get.toNamed('/checkEmail');
    } catch (e) {
      Get.snackbar("Error", "Navigation failed: $e");
    }
  }

  void verifyOtp(String otp) async {
    if (otp == "8642") {
      Get.snackbar("Success", "OTP Verified Successfully");
    } else {
      Get.snackbar("Error", "Invalid OTP");
    }
  }
}
