import 'package:flutter/material.dart';
import 'package:marsin_site/utils/responsive_layout/responsive_layout.dart';

class CardsForAdvantages extends StatefulWidget {
  const CardsForAdvantages({Key? key}) : super(key: key);

  @override
  State<CardsForAdvantages> createState() => _CardsForAdvantagesState();
}

class _CardsForAdvantagesState extends State<CardsForAdvantages> {
  final List<String> titlesForBox = ["01", "02", "03"];

  final ScrollController _scrollController = ScrollController(
    initialScrollOffset: 0.0,
    keepScrollOffset: true,
  );

  double count = 0;

  void _next(double i) {
    var cursor = i * _scrollController.position.maxScrollExtent;
    _scrollController.animateTo(
      cursor,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    double wh = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    List<Widget> titlesItem() {
      return titlesForBox.map((text) {
        return Row(
          children: [
            Container(
              width: wh / 4,
              height: hh * 0.75,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(text, style: theme.textTheme.displayLarge),
                ],
              ),
            ),
            text == "03"
                ? Container()
                : SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
          ],
        );
      }).toList();
    }

    if (ResponsiveLayout.isSmallScreen(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              if (count > 0) {
                count -= 0.5;
                _next(count);
              } else {
                count = 1;
                _next(count);
              }
            },
            iconSize: wh * 0.1,
            icon: const Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: wh * 0.95,
            width: wh * 0.6,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _scrollController,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1.585,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: wh * 0.95,
                    width: wh * 0.6,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('0${index + 1}',
                            style: ResponsiveLayout.isSmallScreen(context)
                                ? theme.textTheme.displayMedium
                                : theme.textTheme.displayLarge),
                      ],
                    ),
                  );
                }),
          ),
          IconButton(
            onPressed: () {
              if (count == 1) {
                count = 0;
                _next(count);
              } else {
                count += 0.5;
                _next(count);
              }
            },
            iconSize: wh * 0.1,
            icon: const Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.white,
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [...titlesItem()],
      );
    }
  }
}
