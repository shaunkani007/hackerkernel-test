import 'package:flutter/material.dart';
import 'package:test_hack/theme.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    Key? key,
    required this.heading,
    required this.value,
  }) : super(key: key);

  final String heading;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading, style: AppTheme.of(context).textTheme.headline5),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Center(
                child: Text(value,
                    style: AppTheme.of(context).textTheme.headline5)),
            color: Color(0xFFF5F5F5),
          ),
        ],
      ),
    );
  }
}
