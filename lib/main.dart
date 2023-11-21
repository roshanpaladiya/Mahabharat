import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/splesh_screen/splash_screen.dart';
import 'package:mahabharat/services/pref_ser/pref_ser.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefService.init();
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    ),
  );
}
