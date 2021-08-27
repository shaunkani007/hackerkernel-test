import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_hack/Screens/LoginScreen/controller.dart';
import 'package:test_hack/theme.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenController = Get.find<LoginScreenController>();
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              screenController.loginButtonPressed();
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
              child: Text(
                'Login',
                style: AppTheme.of(context).textTheme.bodyText1,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
            ),
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: "Not a member yet?",
              style: AppTheme.of(context).textTheme.bodyText2,
              children: [
                TextSpan(
                  text: ' Click here',
                  style: AppTheme.of(context).textTheme.caption,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
