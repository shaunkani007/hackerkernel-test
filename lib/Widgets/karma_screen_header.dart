import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_hack/Screens/LoginScreen/view.dart';
import 'package:test_hack/Screens/ProfileScreen/view.dart';
import 'package:test_hack/Widgets/profile_raised_circular_icon.dart';
import 'package:test_hack/theme.dart';

class KarmaScreenHeader extends StatelessWidget {
  const KarmaScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB(w * 0.1, 0, w * 0.1, 0),
      child: Column(
        children: [
          Row(
            children: [
              RaisedCircularIcon(
                icon: Icons.arrow_back_ios,
                onPressed: () {
                  Get.offAll(() => LoginScreen());
                },
              ),
              Spacer(),
              Text('Karma Drives',
                  style: AppTheme.of(context).textTheme.bodyText1),
              Spacer(flex: 2),
              GestureDetector(
                onTap: () {
                  Get.to(() => ProfileScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Text(
                    'MY DRIVES',
                    style: AppTheme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Search here...',
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.45)),
              suffixIcon: Transform.translate(
                offset: Offset(-10, 0),
                child: Container(
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
