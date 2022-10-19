import 'package:exp2/constants.dart';
import 'package:exp2/screens/details/components/icon_card.dart';
import 'package:exp2/screens/details/components/image_and_icons.dart';
import 'package:exp2/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const ImageAndIcon(),
          const TitleAndPrice(
            title: 'Angelia',
            country: 'Viet Nam',
            price: 400,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  // ignore: sort_child_properties_last
                  child: Text(
                    'Buy Now',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                      foregroundColor: Colors.white),
                ),
              ),
              Expanded(
                  child: TextButton(
                child: const Text('Description'),
                onPressed: () {},
              ))
            ],
          ),
        ],
      ),
    );
  }
}
