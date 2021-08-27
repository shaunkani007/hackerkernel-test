import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:test_hack/theme.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.23,
        width: double.infinity,
        color: Colors.orange,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: Column(
              children: [
                FlutterLogo(size: 50),
                Text(
                  'KARMA',
                  style: AppTheme.of(context).textTheme.headline3,
                ),
                Container(
                  width: 50,
                  child: Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                ),
                Text('Uniting Power'),
                Spacer(),
                Text('LOGIN', style: AppTheme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
