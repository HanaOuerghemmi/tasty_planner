
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tasty_planner/features/home/home_page.dart';
import 'package:tasty_planner/features/plan_meal/plan_a_meal_screen.dart';
import 'package:tasty_planner/features/settings/settings_page.dart';


class TabNavbar extends StatefulWidget {
  const TabNavbar({super.key});

  @override
  _TabNavbarState createState() => _TabNavbarState();
}

class _TabNavbarState extends State<TabNavbar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
     PlanAMealScreen(),
     HomeScreen(),
     SettingsPage(),
  
  ];

  @override
  Widget build(BuildContext context) {

        final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
           BottomNavigationBarItem(
            icon: const Icon(Icons.calendar_month),
            label: "plan a meal",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: localizations.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: localizations.settings,
          ),
        ],
      ),
    );
  }
}
