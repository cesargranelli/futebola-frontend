import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SquadPage extends StatelessWidget {
  const SquadPage({super.key});

  @override
  Widget build(BuildContext context) {
    double currentSliderValue = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Player List"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("squads").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Loading...."),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data?.docs.length,
            itemBuilder: (context, index) {
              return CardPlayer(snapshot.data?.docs.elementAt(index));
            },
          );
        },
      ),
    );
  }
}

class CardPlayer extends StatefulWidget {
  final QueryDocumentSnapshot<Map<String, dynamic>>? elementAt;

  const CardPlayer(this.elementAt, {super.key});

  @override
  State<CardPlayer> createState() => _CardPlayerState();
}

class _CardPlayerState extends State<CardPlayer> {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Image.network(
                widget.elementAt?['team']['emblem'],
              ),
              title: Text(
                widget.elementAt?['name'],
              ),
              subtitle: Text(
                widget.elementAt?['position'],
              ),
              trailing: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  /* ... */
                },
              ),
            ),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
