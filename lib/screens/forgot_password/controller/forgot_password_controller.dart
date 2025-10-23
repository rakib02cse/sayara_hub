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
    await Future.delayed(const Duration(seconds: 2)); // simulate API call
    isLoading.value = false;

    // After email sent
    Get.toNamed('/checkEmail');
  }

  void verifyOtp(String otp) async {
    if (otp == "8642") {
      Get.snackbar("Success", "OTP Verified Successfully");
      // Redirect to reset password screen if needed
    } else {
      Get.snackbar("Error", "Invalid OTP");
    }
  }
}
