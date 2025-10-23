import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sayara_hub_rakibcse02/config/route_manager/app_route.dart';
import 'package:sayara_hub_rakibcse02/utils/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Optional background pattern (if exists in Figma)
          const Opacity(
            opacity: 0.03,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage(AppImages.splashBg),
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ),
          ),

          // Centered Circular Logo
          Center(
            child: ClipOval(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(AppImages.logo),
              ),
            ),
          ),

          // Bottom Button
          Positioned(
            bottom: 50,
            child: SizedBox(
              width: size.width * 0.85,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.getStarted1);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E88E5), // match Figma blue
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                ),
                child: const Text(
                  'Lets go', // match your Figma button text
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
