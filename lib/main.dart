import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nems/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nems/management/cubit.dart';
import 'package:nems/management/provider.dart';
import 'package:nems/management/states.dart';
import 'package:nems/network/remotly/Dio.dart';
import 'package:nems/screen/search.dart';
import 'package:nems/screen/web.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  DioHelper.init();
  runApp(ChangeNotifierProvider(
      create: (c)=>modeprovider(),
    child:MyApp() ,
  )
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var promode =Provider.of<modeprovider>(context);
    return MultiProvider(
      providers: [
        BlocProvider(create: (context)=>buttoncubit()..getbusiness()..getsports()..getscience())
      ],
      child: BlocConsumer<buttoncubit, buttonstates>(
          listener: (context, states) {},
          builder: (context, states) {
            return MaterialApp(
              initialRoute: home.routname,
              routes: {
                home.routname: (context) => home(),
                searchscreen.routname: (context) => searchscreen(),



              },
              theme: ThemeData(
                  textTheme:TextTheme(
                    bodyText1: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                  bottomNavigationBarTheme: BottomNavigationBarThemeData(
                      backgroundColor: Colors.white70,
                      selectedItemColor: Colors.deepOrange,
                      unselectedItemColor: Colors.grey,
                      elevation: 20,
                      showSelectedLabels: true,
                      showUnselectedLabels: true),
                  appBarTheme: AppBarTheme(
                      iconTheme: IconThemeData(
                        color: Colors.black,
                        size: 35,
                      ),
                      systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Colors.white,
                      ),
                      backgroundColor: Colors.red,
                      titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ))),
              darkTheme: ThemeData(
                textTheme:TextTheme(
                  bodyText1: TextStyle(fontSize: 20,color: Colors.white),
                ),
                colorScheme: ColorScheme(
                    brightness: Brightness.dark,
                    primary: Colors.deepOrange,
                    onPrimary: Colors.grey,
                    secondary: Colors.white30,
                    onSecondary: Colors.black,
                    error: Colors.red,
                    onError: Colors.red,
                    background: Colors.blueGrey,
                    onBackground: Colors.blueGrey,
                    surface: Colors.red,
                    onSurface: Colors.red),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    backgroundColor: Colors.white30,
                    selectedItemColor: Colors.deepOrange,
                    unselectedItemColor: Colors.white,
                    elevation: 20,
                    showSelectedLabels: true,
                    showUnselectedLabels: true),
                appBarTheme: AppBarTheme(
                    iconTheme: IconThemeData(
                      color: Colors.white,
                      size: 35,
                    ),
                    systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: Colors.white30,
                    ),
                    backgroundColor: Colors.white30,
                    titleTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    )),

              ),
              themeMode: promode.mode,
            );
          },

        ),
      );

  }
}
