import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminControl {
  static bool adminPanelActive = false;
}

final adminPanelProvider = Provider((ref) => adminPanelActive);