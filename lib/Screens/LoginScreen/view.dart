import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_hack/Screens/LoginScreen/controller.dart';
import 'package:test_hack/Widgets/login_footer.dart';
import 'package:test_hack/Widgets/login_header.dart';
import 'package:test_hack/Widgets/login_input_fields.dart';

class LoginScreen extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    Get.put(LoginScreenController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              LoginHeader(),
              Spacer(flex: 2),
              Expanded(flex: 3, child: InputFields()),
              Spacer(flex: 3),
              Expanded(flex: 2, child: LoginFooter()),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
