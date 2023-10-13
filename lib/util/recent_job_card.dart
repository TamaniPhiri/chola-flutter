import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final int hourlyRate;

  const RecentJobCard({
    super.key,
    required this.companyName,
    required this.jobTitle,
    required this.hourlyRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], border: Border.all(color: Colors.white)),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                jobTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(companyName),
            ],
          ),
          Text(hourlyRate.toString()),
        ]),
      ),
    );
  }
}
