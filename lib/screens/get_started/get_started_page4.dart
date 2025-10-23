import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sayara_hub_rakibcse02/config/route_manager/app_route.dart';
import 'package:sayara_hub_rakibcse02/utils/app_images.dart';

class GetStartedPage4 extends StatelessWidget {
  const GetStartedPage4({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Top Image
              Expanded(
                flex: 6,
                child: Center(
                  child: Image.asset(
                    AppImages.image4,
                    width: size.width * 0.8,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // Title & Description
              const Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      "Stranded on the road? "
                  " We’ve got you covered.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Get instant towing support anywhere, anytime.Just share your location and we’ll connect you with the nearest reliable towing service",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              // Bottom Buttons (Skip & Next)
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Skip Button
                    TextButton(
                      onPressed: () {
                        Get.offNamed(AppRoutes.signIn);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),

                    // Next Button
                    SizedBox(
                      width: size.width * 0.6,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offNamed(AppRoutes.signIn);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E88E5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
