part of 'advantages_desctop.dart';

class AdvantagesForMobile extends StatelessWidget {
  const AdvantagesForMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const TitleForAdvantages(),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: const [
            CardsForAdvantages(),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );

  }
}
