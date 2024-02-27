import 'package:e_commerce/constants/const.dart';
import 'package:flutter/material.dart';

class CostumAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CostumAppBar({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.sort),
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/img/logo.png", width: 39, height: 31),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Stylish",
            style: TextStyle(
                color: bleuColor,
                fontSize: 18,
                fontFamily: 'LibreCaslonText',
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CircleAvatar(
            child: Image.asset("assets/img/avatar.png"),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
