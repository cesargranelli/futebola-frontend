import 'package:flutter/material.dart';
import 'package:futebola_frontend/ui/core/ui/card_player.dart';

class SquadScreen extends StatelessWidget {
  const SquadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Squad Team'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    const Text("Titulares"),
                    CardPlayer(),
                    CardPlayer(),
                    const Text("Reservas"),
                    CardPlayer(),
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
