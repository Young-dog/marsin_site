import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../main.dart';

class MyIconButton extends ConsumerWidget {
  const MyIconButton({Key? key}) : super(key: key);

  final logo = 'assets/images/cupcake.png';

  void onSubmit(WidgetRef ref)  {
    ref.read(adminProvider.notifier).update((state) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    double wh = MediaQuery.of(context).size.width;

    return MaterialButton(
      onPressed: () {
          onSubmit(ref);
      },
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      mouseCursor: MouseCursor.defer,
      child: Image.asset(logo, width: wh*0.07,),
    );
  }
}
