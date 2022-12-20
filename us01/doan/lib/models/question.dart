import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
class Question {
  final String id;
  final String question;
  final String correct;
  final List<String> answers;
  final int level;
  final String topic;
  Question({
    required this.id,
    required this.question,
    required this.correct,
    required this.answers,
    required this.level,
    required this.topic,
  });

  Question copyWith({
    String? id,
    String? question,
    String? correct,
    List<String>? answers,
    int? level,
    String? topic,
  }) {
    return Question(
      id: id ?? this.id,
      question: question ?? this.question,
      correct: correct ?? this.correct,
      answers: answers ?? this.answers,
      level: level ?? this.level,
      topic: topic ?? this.topic,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'correct': correct,
      'answers': answers,
      'level': level,
      'topic': topic,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] ?? '',
      question: map['question'] ?? '',
      correct: map['correct'] ?? '',
      answers: List<String>.from(map['answer']),
      level: map['level']?.toInt() ?? 0,
      topic: map['topic'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) => Question.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Question(id: $id, question: $question, correctAnswer: $correct, answers: $answers, level: $level, topic: $topic)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Question &&
      other.id == id &&
      other.question == question &&
      other.correct == correct &&
      listEquals(other.answers, answers) &&
      other.level == level &&
      other.topic == topic;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      question.hashCode ^
      correct.hashCode ^
      answers.hashCode ^
      level.hashCode ^
      topic.hashCode;
  }


factory Question.fromQueryDocumentSnapshot(QueryDocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final id = snapshot.id;
    data['id'] = id;
    return Question.fromMap(data);
  }
}
