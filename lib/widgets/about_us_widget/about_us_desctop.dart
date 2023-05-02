import 'package:flutter/material.dart';
import 'package:marsin_site/widgets/about_us_widget/description.dart';
import 'package:marsin_site/widgets/about_us_widget/image.dart';

part 'about_us_mobile.dart';

class AboutUsForDesctop extends StatelessWidget {
  const AboutUsForDesctop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ImageForAboutUsWidget(),
          DescriptionForAboutUs(),
        ],
      ),
    );
  }
}
