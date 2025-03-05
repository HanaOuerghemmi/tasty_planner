import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:tasty_planner/core/constants/app_constants.dart';
import 'package:tasty_planner/features/order_list/presentation/pages/order_list_screen.dart';
import 'package:tasty_planner/features/settings/presentation/pages/settings_page.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final DateTime today;
  final TabController tabController;
  final String mounthName;
  final List<DateTime> weekDays;
  final Locale locale;

  const HomeAppbar({
    Key? key,
    required this.today,
    required this.tabController,
    required this.mounthName,
    required this.weekDays,
    required this.locale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormat = 'yyyy-MM-dd';
    final localization = AppLocalizations.of(context)!;
    String getGreeting() {
      final hour = today.hour;
      if (hour < 12) {
        return localization.morning;
      } else if (hour < 18) {
        return localization.afternoun;
      } else {
        return localization.evening;
      }
    }

    return AppBar(
      backgroundColor: theme.appBarTheme.backgroundColor,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderListScreen()),
            );
          },
          icon: Icon(Icons.shopping_cart),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          },
          icon: Icon(Icons.settings),
        ),
         
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getGreeting(),
            //  style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            mounthName,
            style: theme.textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: TabBar(
          tabAlignment: TabAlignment.center,
          controller: tabController,
          isScrollable: true,
          indicatorColor: theme.tabBarTheme.indicatorColor,
          labelPadding: const EdgeInsets.symmetric(horizontal: 5),
          tabs:
              weekDays.map((day) {
                bool isToday =
                    DateFormat(dateFormat).format(day) ==
                    DateFormat(dateFormat).format(today);
                return Tab(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color:
                          isToday
                              ? theme.primaryColorLight
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow:
                          isToday
                              ? [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                ),
                              ]
                              : [],
                    ),
                    child: FittedBox(
                      child: Column(
                        children: [
                          Text(
                            AppConstants.formatDate(
                              day,
                              'E',
                              locale.languageCode,
                            ),
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            day.day.toString(),
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
