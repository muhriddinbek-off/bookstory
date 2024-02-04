import 'package:flutter/material.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          Container(color: Colors.orange),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.indigo),
        ],
      ),
      bottomNavigationBar: TabBar(controller: tabController, tabs: const [
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.home)),
      ]),
    );
  }
}
