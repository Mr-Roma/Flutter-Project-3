import 'package:flutter/material.dart';

class InstagramAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const InstagramAppBar({Key? key, this.height = kToolbarHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/images/instagram_logo.png',
                height: 40,
              ),
              IconButton(
                icon: Icon(Icons.arrow_drop_down_outlined),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.message_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_box_outlined),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
