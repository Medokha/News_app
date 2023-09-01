import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nems/screen/business.dart';
import 'package:nems/screen/science.dart';
import 'package:nems/screen/search.dart';
import 'package:nems/screen/setting.dart';
import 'package:nems/screen/sport.dart';
import 'package:provider/provider.dart';

import 'management/cubit.dart';
import 'management/provider.dart';
import 'management/states.dart';

class home extends StatelessWidget {
  static const String routname = 'home';

  @override
  Widget build(BuildContext context) {
    var promode =Provider.of<modeprovider>(context);
    return BlocConsumer<buttoncubit, buttonstates>(
        listener: (context, states) {},
        builder: (context, states) {
          return Scaffold(
              appBar: AppBar(
                title: Text('News'),
                actions: [
                  IconButton(onPressed: () {
                    Navigator.pushNamed(context, searchscreen.routname);
                  }, icon: Icon(Icons.search)),
                  // IconButton(onPressed: () {
                  //   // buttoncubit.get(context).changemode();
                  // }, icon: Icon(Icons.brightness_4_outlined)),

                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: buttoncubit
                    .get(context)
                    .n,
                onTap: (index) {
                  buttoncubit.get(context).appp(index);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.business_center, size: 30,),
                      label: 'Business'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.sports, size: 30,), label: 'Sports'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.science_rounded, size: 30,),
                      label: 'Science'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings, size: 30,), label: 'Settings'),
                ],

              ),
              body: buttoncubit
                  .get(context)
                  .screen[buttoncubit
                  .get(context)
                  .n]
          );
        },

    );
  }
}