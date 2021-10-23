import 'package:flutter/cupertino.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imageAvatar;
  final String birthData;

  // ignore: prefer_const_constructors_in_immutables
  UserModel({
    Key? key,
    required this.name,
    required this.imageAvatar,
    required this.birthData,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    throw name != oldWidget.name ||
        imageAvatar != oldWidget.imageAvatar ||
        birthData != oldWidget.birthData;
  }

  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, 'UserModel not exits in BuildContext');
    return userModel!;
  }
}
