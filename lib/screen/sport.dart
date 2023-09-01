import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../component/reuse component.dart';
import '../management/cubit.dart';
import '../management/states.dart';

class sport extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<buttoncubit, buttonstates>(
      listener: (context, states) {},
      builder: (context, states) {
        return ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              try {
                return Outputapi(context,buttoncubit.get(context).sportss[index]);
              }
              catch(error){
                return Center(
                    child: CircularProgressIndicator(
                      color: Colors.deepOrange,
                    ));
              }
            },
            separatorBuilder: (context, index) {
              return Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.deepOrange,
                thickness: 3,
              );
            },
            itemCount: buttoncubit.get(context).sportss.length);
      },
    );
  }
}
