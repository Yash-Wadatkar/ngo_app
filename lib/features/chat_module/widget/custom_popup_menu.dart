import 'package:flutter/material.dart';

void showCustomPopupMenu({
  required BuildContext context,
  required List<PopupMenuEntry<String>> menuItems,
  required Function(String) onSelected,
  Offset position = Offset.zero,
}) {
  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
        position.dx, position.dy, position.dx, position.dy),
    items: menuItems,
    elevation: 8.0,
  ).then((value) {
    if (value != null) {
      onSelected(value);
    }
  });
}
