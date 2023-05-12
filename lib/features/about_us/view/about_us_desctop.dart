import 'package:flutter/material.dart';
import 'package:marsin_site/features/about_us/widgets/description.dart';
import 'package:marsin_site/features/about_us/widgets/image.dart';

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
