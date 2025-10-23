import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sayara_hub_rakibcse02/config/route_manager/app_route.dart';
import 'package:sayara_hub_rakibcse02/screens/sign_up_screen/controller/sign_up_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),

              // 🟢 Title
              const Text(
                "Sign Up now",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Please fill the details and create account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 50),

              // 🟩 Email TextField
              TextField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Leonardo Smith",
                  prefixIcon: const Icon(Icons.email_outlined),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // 🟩 Email TextField
              TextField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "www.ulhut@gmail.com",
                  prefixIcon: const Icon(Icons.email_outlined),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🟩 Password TextField
              Obx(
                () => TextField(
                  controller: controller.passwordController,
                  obscureText: !controller.isPasswordVisible.value,
                  decoration: InputDecoration(
                    hintText: "**********",
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(
                        controller.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: controller.togglePasswordVisibility,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 20),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 13),

              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Password must be 8 character",
                    style: TextStyle(
                      color: Color.fromARGB(255, 7, 7, 7),
                      //fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 35),

              // 🟦 Sign In Button
              Obx(
                () => SizedBox(
                  width: size.width,
                  height: 55,
                  child: ElevatedButton(
                    onPressed:
                        controller.isLoading.value ? null : controller.signIn,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ),

              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  // const SizedBox(
                  //     width: size.width * 0.6,
                  //     height: 55,
                  //     child: ElevatedButton(
                  //       onPressed: () {
                  //         Get.offNamed(AppRoutes.signUp);
                  //       },
                  //     ))

                   TextButton(
                      onPressed: () {
                        Get.offNamed(AppRoutes.signIn);
                      },
                      child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),

                  // GestureDetector(
                  //   onTap: () {Get.offAllNamed(AppRoutes.signUp);},   //controller.goToSignUp,
                  //   child: const Text(
                  //     "Sign Up",
                  //     style: TextStyle(
                  //       color: Colors.green,
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                ],
              ),

              const Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(height: 35),

              // 🟤 Social Buttons (Google & Apple in next line)
              Column(
                children: [
                  // Google Button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.grey),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/image8.png', height: 22),
                          const SizedBox(width: 10),
                          const Text(
                            "Continue with Google",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Apple Button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.grey),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/image9.png', height: 22),
                          const SizedBox(width: 10),
                          const Text(
                            "Continue with Apple",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
