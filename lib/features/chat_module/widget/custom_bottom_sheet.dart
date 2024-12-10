import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

void customBottomSheet(BuildContext context, {required Widget widget}) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    elevation: 0,
    builder: (BuildContext context) {
      return Padding(padding: EdgeInsets.all(AppSizes.wSize20), child: widget);
    },
  );
}
