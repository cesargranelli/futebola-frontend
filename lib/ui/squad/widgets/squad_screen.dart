import 'package:flutter/material.dart';
import 'package:futebola_frontend/ui/core/ui/summary_player.dart';

class SquadScreen extends StatelessWidget {
  const SquadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Squad Team'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        "Titulares",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                    SummaryPlayer(),
                    SummaryPlayer(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        "Reservas",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                    SummaryPlayer(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
