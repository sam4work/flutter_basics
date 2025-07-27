import 'package:flutter/material.dart';
import 'package:flutter_basics/tabs/extras_tab.dart';
import 'package:flutter_basics/tabs/home_tab.dart';
import 'package:flutter_basics/tabs/matches_tab.dart';
import 'package:flutter_basics/tabs/news_tab.dart';
import 'package:flutter_basics/tabs/teams_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Journey',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
      ),
      home: const MyHomePage(title: 'Sports'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  _handleBottomNavBarTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _tabs = const [
    HomeTab(),
    MatchesTab(),
    NewsTab(),
    TeamsTab(),
    ExtrasTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        // backgroundColor: Colors.transparent,
        elevation: 5,
        onTap: _handleBottomNavBarTap,
        currentIndex: _selectedIndex,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Matches',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Teams'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Extras'),
        ],
      ),
    );
  }
}
