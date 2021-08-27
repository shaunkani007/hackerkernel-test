import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_hack/Screens/LoginScreen/controller.dart';
import 'package:test_hack/theme.dart';

class InputFields extends StatelessWidget {
  const InputFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenController = Get.find<LoginScreenController>();
    return Container(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            style: TextStyle(color: Colors.black),
            controller: screenController.emailFieldController,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF0F0F0),
              hintText: 'Email',
              hintStyle:TextStyle(color: Colors.black),
              border: OutlineInputBorder(),
            ),
          ),
          Spacer(),
          Obx(
            () => TextField(
              style: TextStyle(color: Colors.black),
              controller: screenController.passwordFieldController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF0F0F0),
                hintText: 'Password',
                hintStyle:TextStyle(color: Colors.black),
              
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    screenController.togglePasswordObscurity();
                  },
                  icon: Icon(Icons.remove_red_eye, color: Colors.black),
                ),
              ),
              obscureText: screenController.hidePassword.value,
            ),
          ),
          SizedBox(height: 10),
          Text('Forgot Password',
              style: AppTheme.of(context).textTheme.caption),
        ],
      ),
    );
  }
}
