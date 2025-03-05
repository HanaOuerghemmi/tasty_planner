import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:tasty_planner/core/core.dart';
import 'package:tasty_planner/features/home/presentation/widgets/home_appbar.dart';
import 'package:tasty_planner/features/meal_plan/presentation/pages/plan_a_meal_screen.dart';
import '../widgets/day_view.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<DateTime> weekDays;
  late DateTime today;

  @override
  void initState() {
    super.initState();
    today = DateTime.now();
    _tabController = TabController(length: 7, vsync: this);
    _updateWeekDays();
  }

  void _updateWeekDays() {
    setState(() {
      today = DateTime.now();
      weekDays = List.generate(
        7,
        (index) => today.subtract(Duration(days: today.weekday - 1 - index)),
      );
      _tabController.index = weekDays.indexWhere(
          (day) => DateFormat('yyyy-MM-dd').format(day) == DateFormat('yyyy-MM-dd').format(today));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateWeekDays();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) {
        final monthName = AppConstants.formatDate(today, 'MMMM', locale.languageCode);
        return Scaffold(
          appBar: HomeAppbar(
            tabController: _tabController,
            today: today,
            mounthName: monthName,
          weekDays: weekDays,
          locale: locale,
          ),
          body: TabBarView(
            controller: _tabController,
            children: weekDays.map((day) {
              return SingleChildScrollView(
                child: dayView(day, theme, locale.languageCode),
              );
            }).toList(),
          ),
         floatingActionButton: FloatingActionButton.small(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PlanAMealScreen()),
    );
  },
  child: const Icon(Icons.add),
),
        );
      },
    );
  }

}