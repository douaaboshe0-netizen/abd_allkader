import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  String id = '';
  String password = '';

  void setId(String value) {
    id = value;
  }

  void setPassword(String value) {
    password = value;
  }

  void login() async {
    final prefs = await SharedPreferences.getInstance();

    final url = Uri.parse("https://abdalkader.onrender.com/mobile/login/");
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"id_number": id, "password": password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final token = data["token"];

      await prefs.setBool('isLoggedIn', true);
      await prefs.setString('token', token);
      Get.snackbar(
        "",
        "",
        snackPosition: SnackPosition.TOP,
        backgroundColor: const Color.fromARGB(255, 147, 239, 107),
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.all(12),
        titleText: Directionality(
          textDirection: TextDirection.rtl,
          child: const Text(
            "تم تسجيل الدخول بنجاح",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      );

      Get.offNamed(Routes.student);
    } else {
      Get.snackbar(
        "",
        "",
        snackPosition: SnackPosition.TOP,
        backgroundColor: const Color.fromARGB(255, 147, 239, 107),
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(12),
        titleText: Directionality(
          textDirection: TextDirection.rtl,
          child: const Text(
            "فشل تسجيل الدخول. تأكد من الرقم وكلمة المرور.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      );
    }
  }
}
