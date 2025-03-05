import 'package:flutter/material.dart';

class SummaryPlayer extends StatelessWidget {
  const SummaryPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueGrey.shade50,
            Colors.blueGrey.shade50,
          ],
        ),
        border: Border(
          bottom: BorderSide(
            color: Colors.blueGrey.shade100,
            width: 1,
          ),
        ),
      ),
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/dash.png"),
            radius: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Rodrigo Caetano"),
              Text("Atacante"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Preço"),
              Text("7.35"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Média"),
              Text("14.12"),
            ],
          ),
          IconButton(
            icon: Icon(Icons.swap_vert),
            onPressed: () {},
            tooltip: "Substituir",
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
            tooltip: "Trocar",
          ),
        ],
      ),
    );
  }
}
