import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class langusgebottomsheat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "English",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.done,
                  size: 30,
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          InkWell(
            onTap: () {
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Arabic",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.done,
                  size: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
