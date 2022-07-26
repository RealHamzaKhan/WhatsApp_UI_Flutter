import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home.dart';

void main() {
  runApp(const WhatsappUi());
}

class WhatsappUi extends StatefulWidget {
  const WhatsappUi({Key? key}) : super(key: key);

  @override
  State<WhatsappUi> createState() => _WhatsappUiState();
}

class _WhatsappUiState extends State<WhatsappUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
    );
  }
}
