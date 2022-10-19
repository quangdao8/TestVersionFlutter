import 'package:exp2/constants.dart';
import 'package:exp2/screens/details/components/icon_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: (() => Navigator.pop(context)),
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                    ),
                  ),
                  const Spacer(),
                  const IconCard(
                    icon: "assets/icons/sun.svg",
                  ),
                  const IconCard(
                    icon: "assets/icons/icon_2.svg",
                  ),
                  const IconCard(
                    icon: "assets/icons/icon_3.svg",
                  ),
                  const IconCard(
                    icon: "assets/icons/icon_4.svg",
                  ),
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.27),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      topLeft: Radius.circular(60)),
                  image: const DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img.png'))),
            )
          ],
        ),
      ),
    );
  }
}
