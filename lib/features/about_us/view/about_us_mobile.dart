part of 'about_us_desctop.dart';

class AboutUsForMobile extends StatelessWidget {
  const AboutUsForMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ImageForAboutUsWidget(),
        DescriptionForAboutUs(),
      ],
    );
  }
}
