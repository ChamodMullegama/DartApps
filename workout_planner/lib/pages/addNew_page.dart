import 'package:flutter/material.dart';

class AddnewPage extends StatefulWidget {
  const AddnewPage({super.key});

  @override
  State<AddnewPage> createState() => _AddnewPageState();
}

class _AddnewPageState extends State<AddnewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Text("add new page"),
          ),
        ),
      ),
    );
  }
}