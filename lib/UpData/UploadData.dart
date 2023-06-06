import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

// Function to upload data to Firestore
Future<void> uploadQuizData() async {
  // Get a reference to the Firestore collection
  CollectionReference quizCollection =
      FirebaseFirestore.instance.collection('quizzes');

  // Load the quiz data from the JSON file
  String quizDataString =
      await rootBundle.loadString('assets/math_questions.json');
  Map<String, dynamic> quizData = jsonDecode(quizDataString);

  // Add the quiz data to the Firestore collection
  await quizCollection.add(quizData);
}
