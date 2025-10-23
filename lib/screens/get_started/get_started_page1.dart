import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sayara_hub_rakibcse02/config/route_manager/app_route.dart';
import 'package:sayara_hub_rakibcse02/utils/app_images.dart';

class GetStartedPage1 extends StatelessWidget {
  const GetStartedPage1({super.key});

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
                    AppImages.image1,
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
                      "Welcome to SayaraHub ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Your one-stop platform to find garages, book mobile mechanics, and get emergency car services anywhere in the UAE",
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Next Button
                    SizedBox(
                      width: size.width * 0.6,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offNamed(AppRoutes.getStarted2);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E88E5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                        
                          ),
                        ),
                        child: const Text(
                                'Get Started →',
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
