import 'package:flutter/material.dart';
import 'package:test_hack/Widgets/profile_detail.dart';

class ProfileDetailsGrid extends StatelessWidget {
  const ProfileDetailsGrid({
    Key? key,
    required this.keyValuePairs,
  }) : super(key: key);

  final List<List<String>> keyValuePairs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        itemCount: 4,
        itemBuilder: (ctx, idx) => ProfileDetail(
            heading: keyValuePairs[idx][0], value: keyValuePairs[idx][1]),
      ),
    );
  }
}