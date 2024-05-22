import 'package:chatbot_spe/components/custom_text_feild.dart';
import 'package:chatbot_spe/service/medical_speciality.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

import 'chatpage/view/chatpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MedicalSpecialtyRecommenderApi api = MedicalSpecialtyRecommenderApi();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical Specialty Chatbot',
      theme: ThemeData(
        primaryColor: Colors.blue,
        // accentColor: Colors.blueAccent,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: const [
              Text('🤖'),
              SizedBox(
                width: 26,
              ),
              Text(
                'chat bot',
                style: TextStyle(color: Color(0xff264773)),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: ChatPage(api: api),
      ),
    );
  }
}





//https://1d6321c9-49e5-4f09-b5fd-dc4b86c64e33-00-2gf6maddwvn8i.spock.replit.dev:5173

//scrollController.position.maxScrollExtent,