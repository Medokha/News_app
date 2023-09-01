import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nems/management/provider.dart';
import 'package:provider/provider.dart';
import '../management/cubit.dart';
import '../management/states.dart';

class modebottomsheat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var promode =Provider.of<modeprovider>(context);
    return BlocProvider(
      create: (BuildContext context) => buttoncubit(),
      child: BlocConsumer<buttoncubit, buttonstates>(
        listener: (context, states) {},
        builder: (context, states) {
          return
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .05,
                  ),
                  InkWell(
                    onTap: () {
                      promode.changemode(ThemeMode.light);
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "light",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            color: promode.mode==ThemeMode.light ? Colors.deepOrange:Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.done,
                          size: 30,
                          color: promode.mode==ThemeMode.light ? Colors.deepOrange:Colors.black,

                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  InkWell(
                    onTap: () {
                      promode.changemode(ThemeMode.dark);
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dark",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            color: promode.mode==ThemeMode.dark ? Colors.deepOrange:Colors.black,

                          ),
                        ),
                        Icon(
                          Icons.done,
                          size: 30,
                          color: promode.mode==ThemeMode.dark ? Colors.deepOrange:Colors.black,

                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
        },
      ),
    );
  }
}




