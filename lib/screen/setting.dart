import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../show/bottomsheet.dart';
import '../show/bottonsheat.dart';

class setting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
              child: Text("Language",style: TextStyle(fontSize: 30),)),
          SizedBox(
            height: MediaQuery.of(context).size.height*.02,
          ),
          InkWell(
            onTap: (){
              showlanguagebottomsheat(context);
            },
            child: Container(
              padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.orange],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: MediaQuery.of(context).size.height*.1,
                alignment: Alignment.centerLeft,
                child: Text("Language",style: TextStyle(fontSize: 30),)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*.08,
          ),

          Container(
              alignment: Alignment.centerLeft,
              child: Text("Mode",style: TextStyle(fontSize: 30),)),
          SizedBox(
            height: MediaQuery.of(context).size.height*.02,
          ),
          InkWell(
            onTap: (){
              showmodebottomsheat(context);
            },
            child: Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.orange],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: MediaQuery.of(context).size.height*.1,
                alignment: Alignment.centerLeft,
                child: Text("Mode",style: TextStyle(fontSize: 30),)),
          ),
        ],
      ),
    );
  }

  void showlanguagebottomsheat(BuildContext context){
    showModalBottomSheet(context: context, builder:(context){
      return langusgebottomsheat();
    });
  }
  void showmodebottomsheat(BuildContext context){
    showModalBottomSheet(context: context, builder:(context){
      return modebottomsheat();
    });
  }
}
