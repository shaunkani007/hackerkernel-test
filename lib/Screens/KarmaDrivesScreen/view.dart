import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_hack/Widgets/karma_Screen_card_list.dart';
import 'package:test_hack/Widgets/karma_screen_header.dart';

class KarmaDriveScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.orange),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(height: 50),
              KarmaScreenHeader(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: CardList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
