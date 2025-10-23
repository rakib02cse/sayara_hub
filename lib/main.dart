import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sayara_hub_rakibcse02/config/route_manager/app_route.dart';

void main() {
  runApp(const SayaraHub());
}

class SayaraHub extends StatelessWidget {
  const SayaraHub({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splash,
        getPages: AppRoutes.routes,
      );
  }
}