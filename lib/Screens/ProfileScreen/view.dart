import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:test_hack/Widgets/profile_details_grid.dart';
import 'package:test_hack/Widgets/profile_icon.dart';
import 'package:test_hack/Widgets/profile_raised_circular_icon.dart';

import '../../theme.dart';

class ProfileScreen extends GetView {
  final List<List<String>> details = [
    ['Name', 'Paul'],
    ['Phone Number', '+91 9786543210'],
    ['Location', 'New York City'],
    ['Interest', 'Football'],
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.orange),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    children: [
                      RaisedCircularIcon(
                        icon: Icons.arrow_back_ios,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      Spacer(),
                      Text(
                        'Profile',
                        style: AppTheme.of(context).textTheme.headline6,
                      ),
                      Spacer(flex: 4),
                      RaisedCircularIcon(icon: Icons.edit, onPressed: (){},),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height * 0.3,
                              child:
                                  ProfileDetailsGrid(keyValuePairs: details)),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 50, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Notifications',
                                    style: AppTheme.of(context)
                                        .textTheme
                                        .headline4),
                                FlutterSwitch(
                                  value: true,
                                  onToggle: (x) {},
                                  activeColor: Colors.orange,
                                  activeText: 'ON',
                                  activeTextColor: Colors.white,
                                  showOnOff: true,
                                  borderRadius: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ProfileIcon(),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
