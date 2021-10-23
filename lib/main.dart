import 'package:flutter/material.dart';
import 'package:inherited_widget/home/home_page.dart';
import 'package:inherited_widget/model/user_model.dart';
import 'package:inherited_widget/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Deyvisson Eduardo',
      birthData: '15/08/1995',
      imageAvatar: '',
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
