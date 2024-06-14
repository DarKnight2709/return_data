import 'package:flutter/material.dart';
import 'package:return_data/buttons/selection_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Returning Data Demo"),
      ),

      body: const Center(
        child: SelectionButton(),
      ) 
    );
  }
}