import 'package:flutter/material.dart';
import 'package:test_hack/theme.dart';

class CardList extends StatelessWidget {
  const CardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Expanded(
          child: ListView.separated(
            itemBuilder: (ctx, idx) => KarmaCard(),
            separatorBuilder: (ctx, idx) => SizedBox(height: 20),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class KarmaCard extends StatelessWidget {
  const KarmaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: NetworkImage(
              'https://images.unsplash.com/photo-1551156922-a5812979c10a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '9,523',
                        style: AppTheme.of(context).textTheme.subtitle2,
                      ),
                      Text('JOINED',
                          style: AppTheme.of(context).textTheme.headline2),
                    ],
                  )
                ],
              ),
              Spacer(flex: 3),
              Text('Category', style: AppTheme.of(context).textTheme.headline2),
              Spacer(flex: 2),
              Text('SPIRITUAL EMPOWERMENT',
                  style: AppTheme.of(context).textTheme.subtitle2),
              Spacer(flex: 3),
              Row(
                children: [
                  Icon(Icons.alarm),
                  Spacer(),
                  Text('05:00 AM | 07 DEC 2019',
                      style: AppTheme.of(context).textTheme.headline2),
                  Spacer(flex: 8),
                ],
              ),
              Spacer(flex: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex:4,child: cardFooterButton('JOINED', Colors.orange, context)),
                  Spacer(),
                  Expanded(flex:4,child: cardFooterButton('DO KARMA', Colors.white, context)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector cardFooterButton(
    String displayText,
    Color backgroundColor,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        // padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        // width: MediaQuery.of(context).size.width * 0.3,
        height: 30,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            displayText,
            style: backgroundColor == Colors.white
                ? AppTheme.of(context).textTheme.headline5
                : AppTheme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
