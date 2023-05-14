part of 'start_widget_desctop.dart';

class StartForMobile extends StatelessWidget {
  const StartForMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        NavBar(),
        SizedBox(
          height: 15,
        ),
        ImageForStartWidget(),
        SizedBox(
          height: 15,
        ),
        DescriptionForStart()
      ],
    );
  }
}
