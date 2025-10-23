import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'controller/forgot_password_controller.dart';

class OtpVerificationPage extends StatelessWidget {
  OtpVerificationPage({super.key});

  final ForgotPasswordController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final String email = Get.arguments ?? "your email";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const Center(
              child: Text(
                "OTP Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                "Please check your email $email to see the verification code",
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 30),

            const Text(
              "OTP Code",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),

            // -> pin_code_fields widget
            PinCodeTextField(
              appContext: context,
              length: 4,
              animationType: AnimationType.none,
              keyboardType: TextInputType.number,
              autoDisposeControllers: false,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 54,
                fieldWidth: 54,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.grey.shade100,
                selectedFillColor: Colors.grey.shade100,
                activeColor: Colors.grey.shade300,
                selectedColor: Colors.grey.shade300,
                inactiveColor: Colors.grey.shade300,
              ),
              cursorColor: Colors.black,
              enableActiveFill: true,
              onChanged: (value) {
                // optional: handle changes
              },
              onCompleted: (value) {
                controller.verifyOtp(value);
              },
            ),

            const SizedBox(height: 18),

            Obx(
              () => SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // optionally: call verify with a stored otp value
                    // controller.verifyOtp(otpValue);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Verify"),
                ),
              ),
            ),

            const SizedBox(height: 14),

            // resend / timer row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Resend code to", style: TextStyle(color: Colors.grey)),
                Text("01:26", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
