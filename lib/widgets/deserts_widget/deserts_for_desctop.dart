import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marsin_site/models/admin_controll.dart';
import 'package:marsin_site/widgets/deserts_widget/title.dart';

import 'admin_auth/admin_auth_widget.dart';
import 'buttons/arrow_buttons_and_catalog.dart';
import 'buttons/buttons_for_categories.dart';
import 'buttons/my_icon_button.dart';
part 'deserts_for_mobile.dart';

final adminProvider = StateProvider<bool>((ref) {
  AdminControl adminControl = AdminControl();
  return adminControl.adminActivity;
});

class DesertsCatalogForDesctop extends ConsumerStatefulWidget {
  const DesertsCatalogForDesctop({Key? key}) : super(key: key);

  @override
  ConsumerState<DesertsCatalogForDesctop> createState() =>
      _DesertsCatalogForDesctopState();
}

class _DesertsCatalogForDesctopState extends ConsumerState<DesertsCatalogForDesctop> {


  @override
  Widget build(BuildContext context) {

    double wh = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;



    bool adminControl = ref.watch(adminProvider);

    return SizedBox(
      height: hh,
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              //Icon & title
              Row(
                children: [
                  const MyIconButton(),
                  SizedBox(
                    width: wh / 5,
                  ),
                  const TitleForDesertsCatalog(),
                ],
              ),
              //Buttton for categories
              const ButtonsForCategories(),
              //Deserts Catalog
              const ArrowButtons(),
            ],
          ),
          adminControl == true ?
          const AdminAuthWidget() : Container(),
        ],
      ),
    );
  }
}
