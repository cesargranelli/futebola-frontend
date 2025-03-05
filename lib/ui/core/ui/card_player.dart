import 'package:flutter/material.dart';

class CardPlayer extends StatelessWidget {
  const CardPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueGrey.shade50,
            Colors.blueGrey.shade50,
          ],
        ),
      ),
      height: 100,
      width: double.infinity,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/dash.png"),
              radius: 40,
            ),
          ),
          Container(
            //width: 100,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Rodrigo Caetano"),
                Text("Atacante"),
              ],
            ),
          ),
          Container(
            //width: 50,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("C\$"),
                Text("99"),
              ],
            ),
          ),
          Container(
            //width: 50,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("PTS"),
                Text("14"),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.change_circle),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.double_arrow),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
