// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

LeetCodeSummaryModel summaryFromJson(String str) =>
    LeetCodeSummaryModel.fromJson(json.decode(str));

String welcomeToJson(LeetCodeSummaryModel data) => json.encode(data.toJson());

class LeetCodeSummaryModel {
  LeetCodeSummaryModel(
      {required this.status,
      required this.message,
      required this.totalSolved,
      required this.totalQuestions,
      required this.easySolved,
      required this.totalEasy,
      required this.mediumSolved,
      required this.totalMedium,
      required this.hardSolved,
      required this.totalHard,
      required this.acceptanceRate});

  String status;
  String message;
  int totalSolved;
  int totalQuestions;
  int easySolved;
  int totalEasy;
  int mediumSolved;
  int totalMedium;
  int hardSolved;
  int totalHard;
  double acceptanceRate;

  factory LeetCodeSummaryModel.fromJson(Map<String, dynamic> json) =>
      LeetCodeSummaryModel(
        status: json["status"],
        message: json["message"],
        totalSolved: json["totalSolved"],
        totalQuestions: json["totalQuestions"],
        easySolved: json["easySolved"],
        totalEasy: json["totalEasy"],
        mediumSolved: json["mediumSolved"],
        totalMedium: json["totalMedium"],
        hardSolved: json["hardSolved"],
        totalHard: json["totalHard"],
        acceptanceRate: json["acceptanceRate"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "totalSolved": totalSolved,
        "totalQuestions": totalQuestions,
        "easySolved": easySolved,
        "totalEasy": totalEasy,
        "mediumSolved": mediumSolved,
        "totalMedium": totalMedium,
        "hardSolved": hardSolved,
        "totalHard": totalHard,
        "acceptanceRate": acceptanceRate
      };
}
