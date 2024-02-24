import 'package:cyberwares_awareness/models/detalis_view_cards_model.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class DetalisViewCards extends StatelessWidget {
  const DetalisViewCards({super.key, required this.c1});
  final CardsModel c1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        //IconButton to can forwared to homeview
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return const HomeView();
          }))),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              //the dark part
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(c1
                          .image))), //the icon appear above the card after click to go into card page
              child: Text(
                c1.title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                    //overflow: TextOverflow.ellipsis
                    ),
              )),
          Container(
            //include the data about the type
            width: double.infinity,
            // margin: EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: 480,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: c1.color),
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    c1.descrpation,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 22,

                      //overflow: TextOverflow.ellipsis
                    ),
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
