import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nems/management/states.dart';
import 'package:nems/network/remotly/Dio.dart';

import '../screen/business.dart';
import '../screen/science.dart';
import '../screen/setting.dart';
import '../screen/sport.dart';

class buttoncubit extends Cubit<buttonstates>{
  buttoncubit() :super(bttonintialstate());

  static buttoncubit get(context) => BlocProvider.of(context);
  int n =0;
  List<Widget> screen =[
    business(),
    sport(),
    science(),
    setting()
  ];
  void appp (index){
    if(index==1){
      getsports();
    }
    if(index==2){
      getscience();
    }
    n=index;
    emit(buttonchangestate());
  }


  List<dynamic> businesss=[];
  void getbusiness(){
    emit(loodbusiness());
    DioHelper.getdata(
        url: 'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'business',
          'apikey':'4db72cfe3ce74180a40dc2d747d61dd7',

        },).then((value){
          businesss=value?.data['articles'];
          print(businesss[0]);
          emit(sucssesbusiness());
    }).catchError((error){
      print(error.toString());
      emit(failbusiness(error.toString()));
    });
  }

  List<dynamic> sportss=[];
  void getsports(){
    if(sportss.length==0){
      emit(loodsports());
      DioHelper.getdata(
        url: 'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'sports',
          'apikey':'4db72cfe3ce74180a40dc2d747d61dd7',

        },).then((value){
        sportss=value?.data['articles'];
        print(sportss[0]);
        emit(sucssessports());
      }).catchError((error){
        print(error.toString());
        emit(failsports(error.toString()));
      });
    }
    }

  List<dynamic> sciences=[];
  void getscience(){
    if(sciences.length==0){
      emit(loodscience());
      DioHelper.getdata(
        url: 'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'science',
          'apikey':'4db72cfe3ce74180a40dc2d747d61dd7',

        },).then((value){
        sciences=value?.data['articles'];
        print(sciences[0]);
        emit(sucssesscience());
      }).catchError((error){
        print(error.toString());
        emit(failscience(error.toString()));
      });
    }
  }

  List<dynamic> search=[];
  void getsearch(String value){

    emit(loodsearch());
    DioHelper.getdata(
      url: 'v2/everything',
      query: {
        'q':'$value',
        'apikey':'4db72cfe3ce74180a40dc2d747d61dd7',

      },).then((value){
      search=value?.data['articles'];
      emit(sucssessearch());
    }).catchError((error){
      print(error.toString());
      emit(failsearch(error.toString()));
    });
  }


  ThemeMode mode =ThemeMode.light;
  void changemodesetting (ThemeMode modee){
    mode = modee;
    emit(buttonchangemode());
  }
}