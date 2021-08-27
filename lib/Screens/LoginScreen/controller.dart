import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_hack/API/login_api.dart';
import 'package:http/http.dart' as http;
import 'package:test_hack/Screens/KarmaDrivesScreen/view.dart';

class LoginScreenController extends GetxController {
  final TextEditingController emailFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();
  var hidePassword = true.obs;

  void togglePasswordObscurity() {
    hidePassword.update((val) {
      hidePassword.value = !val!;
    });
  }

  Future<void> loginButtonPressed() async {
    http.Response response = await LoginApi.login(
      emailFieldController.text,
      passwordFieldController.text,
    );
    if (response.statusCode == 200) {
      Get.offAll(() => KarmaDriveScreen());
    }
    else print('Wrong credentials');
  }
}
