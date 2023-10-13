import 'package:chola/util/recent_job_card.dart';
import 'package:flutter/material.dart';

import '../util/job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    ['DevSpot', 'Web Programmer', 45],
    ['DevHub', 'Web Designer', 40],
    ['DevTeam', 'Software Eng.', 60]
  ];

  final List recentJobs = [
    ['DevGrip', 'Web Programmer', 45],
    ['DevCode', 'Web Designer', 40],
    ['DevKnights', 'Software Eng.', 60]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const DrawerButton(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      drawer: const Drawer(
        elevation: 0,
        backgroundColor: Colors.purple,
        child: Column(
          children: [
            Text(
              "data",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business_outlined), label: "Home")
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Discover new path",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            SearchBar(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "For Me",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: jobsForYou.length,
                  itemBuilder: (context, index) {
                    return JobCard(
                      companyName: jobsForYou[index][0],
                      jobTitle: jobsForYou[index][1],
                      hourlyRate: jobsForYou[index][2],
                    );
                  },
                )),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Recently Added",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.builder(
                  itemCount: recentJobs.length,
                  itemBuilder: (context, index) {
                    return RecentJobCard(
                      companyName: recentJobs[index][0],
                      jobTitle: recentJobs[index][1],
                      hourlyRate: recentJobs[index][2],
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
