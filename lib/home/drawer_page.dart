import 'package:flutter/material.dart';
import 'package:inherited_widget/model/user_model.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = UserModel.of(context);
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 20,
            backgroundImage: NetworkImage(user.imageAvatar),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.name,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                user.birthData,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
