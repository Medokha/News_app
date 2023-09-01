import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nems/component/reuse%20component.dart';

import '../management/cubit.dart';
import '../management/states.dart';

class searchscreen extends StatelessWidget {
  static const String routname = 'search';
  var textsearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<buttoncubit, buttonstates>(
      listener: (context, state) {},
      builder: (BuildContext context, state) {
        var listsearch = buttoncubit.get(context).search;
        return Scaffold(
          appBar: AppBar(
            title: Text("Search"),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Colors.deepOrange),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.deepOrange,
                      ),
                      label: Text("Search")),
                  // controller: textsearch,
                  onChanged: (value) {
                    buttoncubit.get(context).getsearch(value);
                    print(value);
                    print(listsearch.length);
                  },
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'No search';
                    }
                    return null;
                  },
                ),
              ),
              Expanded(
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      try {
                        return Outputapi(context, listsearch[index]);
                      } catch (error) {
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
                    itemCount: listsearch.length),
              ),
            ],
          ),
        );
      },
    );
  }
}
