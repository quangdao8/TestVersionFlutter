import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());

    return CardInfo();
  }
}

class CardInfo extends StatelessWidget {
  const CardInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      color: Colors.grey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Code du an moi\n',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: 'Lam gi do abc ABC',
                  style: Theme.of(context).textTheme.bodyText2),
            ]),
          ),
          const Spacer(),
          Row(
            children: const [
              Text('10/03/2022 02 34'),
              Icon(
                Icons.watch_later_outlined,
                size: 20,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}
