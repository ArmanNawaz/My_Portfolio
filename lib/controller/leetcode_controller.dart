import 'package:http/http.dart' as http;

import '../models/leetcode_summary_model.dart';

class LeetCodeService {
  Future<LeetCodeSummaryModel> getLeetCodeSummary() async {
    final data = await http
        .get(Uri.parse('https://leetcode-stats-api.herokuapp.com/ArmanNawaz'));

    var jsonString = data.body;
    return summaryFromJson(jsonString);
  }
}
