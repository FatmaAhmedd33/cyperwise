import 'package:cyberwares_awareness/models/detalis_model.dart';
import 'package:cyberwares_awareness/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsViewArticles extends StatelessWidget {
  final DetailsModel d1;

  const DetailsViewArticles({super.key, required this.d1});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        leading: IconButton(icon: const Icon(Icons.arrow_back),color: Colors.white
      ,onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const HomeView();
                    })))
                     ,),),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 240,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/pngs/background article.png'))),
          ),
          Container(
            width: double.infinity,
            // margin: EdgeInsets.all(10),
            padding: const EdgeInsets.all(5),
            height: 400,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Color(0xff161616)),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                            height: 60,
                            width: 60,
                            child: SvgPicture.asset(
                              'assets/images/svgs/heart.svg',
                            )),
                      ],
                    ),
                    Text(
                      d1.title,
                      style: const TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Text(
                      d1.subTitle1,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Text(
                      d1.subTitle2,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis),
                      softWrap: false,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  d1.description,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
