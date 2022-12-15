import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../widgets/summary_item.dart';
import '../models/summary.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  String url = "https://covid19.mathdro.id/api";
  late SummaryModel dataSummary;

  Future getSummary() async {
    try {
      var result = await http.get(Uri.parse(url));
      Map<String, dynamic> data =
          json.decode(result.body) as Map<String, dynamic>;

      dataSummary = SummaryModel.fromJson(data);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Covid-19'),
      ),
      body: FutureBuilder(
        future: getSummary(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text('Loading...'),
            );
          } else {
            if (dataSummary.confirmed.value == 0) {
              return const Center(
                child: Text('No Data'),
              );
            }
            return Column(
              children: [
                SummaryItem(
                  title: 'Summary',
                  value: dataSummary.confirmed.value.toString(),
                  color: Colors.greenAccent,
                ),
                SummaryItem(
                  title: 'Deaths',
                  value: dataSummary.deaths.value.toString(),
                  color: Colors.redAccent,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
