
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nems/screen/business.dart';
import 'package:nems/screen/web.dart';

Widget Outputapi (context, business) => InkWell(
  onTap: (){
    web(business['url']);
  },
  child:   Padding(

    padding: const EdgeInsets.all(20),

    child: Row(

      children: [

        Container(

            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(40)),

            height: MediaQuery.of(context).size.height * .2,

            width: MediaQuery.of(context).size.width * .4,

            child: Image.network(

              "${business['urlToImage']}"==null?"${business['urlToImage']}":"https://www.pngarts.com/files/10/Default-Profile-Picture-PNG-Photo.png",

              fit: BoxFit.fill,

              height: MediaQuery.of(context).size.height * .2,

              width: MediaQuery.of(context).size.width * .4,

            )),

        SizedBox(

          width: MediaQuery.of(context).size.width * .1,

        ),

        Container(

          height: MediaQuery.of(context).size.height * .2,

          width: MediaQuery.of(context).size.width * .4,

          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Expanded(

                  child: Text(

                    "${business['title']}",

                    style: Theme.of(context).textTheme.bodyText1,

                    maxLines: 3,

                    overflow: TextOverflow.visible,

                  )),

              Text(

                "${business["publishedAt"]}",

                style: TextStyle(fontSize: 15, color: Colors.grey),

              ),

            ],

          ),

        )

      ],

    ),

  ),
);

