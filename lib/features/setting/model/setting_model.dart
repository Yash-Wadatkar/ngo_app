import 'package:flutter/cupertino.dart';

class SettingModel {
  final String name;
  final String description;
  final IconData icon;
  final void Function() routes;

  SettingModel({
    required this.name,
    required this.description,
    required this.icon,
    required this.routes,
  });
}
