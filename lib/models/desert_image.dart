import 'dart:typed_data';

import 'package:image_picker_web/image_picker_web.dart';

class ImageDesert {
  Uint8List? imageFile;

  Future<void> getImage() async {
    imageFile = await ImagePickerWeb.getImageAsBytes();
    print(imageFile);
  }

}