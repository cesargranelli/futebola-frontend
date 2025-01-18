import 'package:flutter/material.dart';
import 'package:futebola_frontend/ui/home/viewmodels/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                'dash.png',
              ),
              Text(
                'Welcome!',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(viewModel.gamester!.name),
            ],
          ),
        ),
      ),
    );
  }
}
