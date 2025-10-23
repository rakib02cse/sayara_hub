import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/forgot_password_controller.dart';

class ForgotPasswordPage extends StatelessWidget {
  final ForgotPasswordController controller = Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text(
              "Forgot password",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Enter your email account to reset your password",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 32),
            TextField(
              onChanged: (value) => controller.email.value = value,
              decoration: InputDecoration(
                hintText: "Enter your email",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: Colors.grey.shade100,
              ),
            ),
            const SizedBox(height: 24),
            Obx(() => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: controller.isLoading.value
                      ? null
                      : () => controller.sendResetEmail(),
                  child: controller.isLoading.value
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text("Reset Password"),
                )),
          ],
        ),
      ),
    );
  }
}
