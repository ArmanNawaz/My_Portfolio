import 'package:flutter/material.dart';
import 'package:portfolio_new/models/leetcode_summary_model.dart';
import 'package:portfolio_new/utilities/my_progress_indicator.dart';

late Future<LeetCodeSummaryModel> summary;

class LeetCode extends StatelessWidget {
  const LeetCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "LeetCode",
                style: TextStyle(fontSize: 25),
              ),
            ),
            FutureBuilder(
              future: summary,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 230,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(width: 50),
                          MyProgressIndicator(
                            value: 1,
                            total: 1,
                            color: Colors.purpleAccent,
                            title: "Error",
                          ),
                          const SizedBox(width: 100),
                          MyProgressIndicator(
                            value: 1,
                            total: 1,
                            color: Colors.green,
                            title: "Error",
                          ),
                          const SizedBox(width: 100),
                          MyProgressIndicator(
                            value: 1,
                            total: 1,
                            color: Colors.orangeAccent,
                            title: "Error",
                          ),
                          const SizedBox(width: 100),
                          MyProgressIndicator(
                            value: 1,
                            total: 1,
                            color: Colors.red,
                            title: "Error",
                          ),
                          const SizedBox(width: 100),
                        ],
                      ),
                    ),
                  );
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 230,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(width: 50),
                          MyProgressIndicator(
                            value: 1,
                            total: 1,
                            color: Colors.purpleAccent,
                            title: "Loading",
                          ),
                          const SizedBox(width: 100),
                          MyProgressIndicator(
                            value: 1,
                            total: 1,
                            color: Colors.green,
                            title: "Loading",
                          ),
                          const SizedBox(width: 100),
                          MyProgressIndicator(
                            value: 1,
                            total: 1,
                            color: Colors.orangeAccent,
                            title: "Loading",
                          ),
                          const SizedBox(width: 100),
                          MyProgressIndicator(
                            value: 1,
                            total: 1,
                            color: Colors.red,
                            title: "Loading",
                          ),
                          const SizedBox(width: 100),
                        ],
                      ),
                    ),
                  );
                } else {
                  LeetCodeSummaryModel? model =
                      snapshot.data as LeetCodeSummaryModel?;
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 230,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(width: 50),
                          MyProgressIndicator(
                            value: model!.totalSolved.toDouble(),
                            total: model.totalQuestions.toDouble(),
                            color: Colors.purpleAccent,
                            title: "Total",
                          ),
                          const SizedBox(width: 100),
                          MyProgressIndicator(
                            value: model.easySolved.toDouble(),
                            total: model.totalEasy.toDouble(),
                            color: Colors.green,
                            title: "Easy",
                          ),
                          const SizedBox(width: 100),
                          MyProgressIndicator(
                            value: model.mediumSolved.toDouble(),
                            total: model.totalMedium.toDouble(),
                            color: Colors.orangeAccent,
                            title: "Medium",
                          ),
                          const SizedBox(width: 100),
                          MyProgressIndicator(
                            value: model.hardSolved.toDouble(),
                            total: model.totalHard.toDouble(),
                            color: Colors.red,
                            title: "Hard",
                          ),
                          const SizedBox(width: 100),
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
