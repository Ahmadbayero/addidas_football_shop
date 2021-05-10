import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image(
              image: AssetImage('assets/images/logos/logo.png'), width: 40.0),
        ),
        Container(
          padding: EdgeInsets.only(left: 6.0),
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  20.0,
                ),
              )),
          child: IconButton(
            iconSize: 30.0,
            color: Colors.white,
            icon: Icon(Icons.shopping_bag_sharp),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
