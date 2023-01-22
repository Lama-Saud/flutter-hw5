import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  //var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 68, 144, 148),
      appBar: AppBar(
        title: const Text("Homework 4"),
        backgroundColor: const Color.fromARGB(255, 29, 105, 103),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Counter(),
          SizedBox(
            height: 40,
          ),
          ChangeHeart(),
        ],
      ),
    );
  }
}

// Class counter
class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Press after each Duaa:",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  count = count + 1;
                });
              }),
              child: const Icon(
                Icons.check_box,
                size: 40,
              ),
            ),
          ],
        ),
        Text(
          "$count",
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}

// Class to change heart color
class ChangeHeart extends StatefulWidget {
  const ChangeHeart({super.key});

  @override
  State<ChangeHeart> createState() => _ChangeHeartState();
}

class _ChangeHeartState extends State<ChangeHeart> {
  var heartColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (heartColor == Colors.white) {
            heartColor = const Color.fromARGB(255, 106, 14, 7);
          } else {
            heartColor = Colors.white;
          }
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Press if you like it:",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 20,
          ),
          Icon(
            Icons.favorite,
            size: 40,
            color: heartColor,
          ),
        ],
      ),
    );
  }
}
