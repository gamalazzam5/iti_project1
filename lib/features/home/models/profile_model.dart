import 'package:flutter/cupertino.dart';

class ProfileModel {
  final IconData leading;
  final Widget? trails;
  final String text;
  final bool showTrail;

  const ProfileModel({required this.leading, required this.trails, required this.text, required this.showTrail});

}