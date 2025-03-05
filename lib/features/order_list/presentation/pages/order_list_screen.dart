import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tasty_planner/features/order_list/presentation/widgets/add_items.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({Key? key}) : super(key: key);

  @override
  _OrderListScreenState createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> categories = [];
  String selectedCategory = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final localizations = AppLocalizations.of(context)!;
    
    categories = [
      localizations.all,
      localizations.grocery,
      localizations.meat,
      localizations.snacks,
      localizations.beverages,
      localizations.personal_care,
      localizations.household,
      localizations.other,
    ];
    
    selectedCategory = localizations.grocery; // Set default category

    _tabController = TabController(length: categories.length, vsync: this);
    setState(() {}); // Rebuild after categories are set
  }
void _updateSelectedCategory(String newCategory) {
  setState(() {
    selectedCategory = newCategory;
  });
}

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (categories.isEmpty) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.order_list),
        bottom: TabBar(
          labelStyle: theme.textTheme.bodyMedium,
          tabAlignment: TabAlignment.center,
          indicatorColor: theme.tabBarTheme.indicatorColor,
          controller: _tabController,
          isScrollable: true,
          tabs: categories.map((category) => Tab(text: category)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: categories.map((category) {
          return buildCategoryList(category, context);
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddItemDialog(
            context: context,
            selectedCategory: selectedCategory,
            categories: categories,
            onCategoryChanged: _updateSelectedCategory,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
