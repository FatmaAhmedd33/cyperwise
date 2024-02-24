import 'package:cyberwares_awareness/views/home_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {// the first page
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.only(top: 60, left: 20),
            decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,//make the photo in end of page
                    image: NetworkImage('https://www.shutterstock.com/image-vector/spy-agent-hacker-anonymous-white-600nw-1722014434.jpg'))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Cybersecurity Attack Prevention',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Learn how to avoid various types of cyber threats through proactive measures.',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(//to make a bottom click
                  child: Container(// to make the shape of bottom
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: const Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  onTap: () {//to make the bottom go to the homeview page
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const HomeView();
                    })));
                  })
            ])));
  }
}
