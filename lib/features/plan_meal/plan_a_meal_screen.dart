import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PlanAMealScreen extends StatefulWidget {
  const PlanAMealScreen({Key? key}) : super(key: key);

  @override
  _PlanAMealScreenState createState() => _PlanAMealScreenState();
}

class _PlanAMealScreenState extends State<PlanAMealScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  
  DateTime _selectedDate = DateTime.now();
  String _selectedCategory = 'breakfast'; // Use localization keys

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void _saveMealPlan() {
    final localizations = AppLocalizations.of(context)!;

    if (_titleController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(localizations.add_meal_title)),
      );
      return;
    }

    final mealPlan = {
      'category': _selectedCategory,
      'date': _selectedDate,
      'title': _titleController.text,
      'description': _descriptionController.text,
    };

    Navigator.pop(context, mealPlan);
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final List<Map<String, dynamic>> categories = [
      {'name': localizations.breakfast, 'icon': Icons.free_breakfast, 'key': 'breakfast'},
      {'name': localizations.lunch, 'icon': Icons.lunch_dining, 'key': 'lunch'},
      {'name': localizations.dinner, 'icon': Icons.dinner_dining, 'key': 'dinner'},
      {'name': localizations.snack, 'icon': Icons.fastfood, 'key': 'snack'},
      {'name': localizations.special_dinner, 'icon': Icons.star, 'key': 'special_dinner'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.plan_meal_title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: _saveMealPlan,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(localizations.select_meal_categorie, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          
            Wrap(
              spacing: 10,
              children: categories.map((category) {
                return ChoiceChip(
                  avatar: Icon(category['icon'], size: 20),
                  label: Text(category['name']),
                  selected: _selectedCategory == category['key'],
                  onSelected: (selected) {
                    setState(() {
                      _selectedCategory = category['key'];
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Text(localizations.choose_date, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ListTile(
              leading: const Icon(Icons.calendar_today),
title: Text(DateFormat.yMMMMEEEEd(Localizations.localeOf(context).languageCode).format(_selectedDate)),
              trailing: const Icon(Icons.arrow_drop_down),
              onTap: _pickDate,
            ),
            const SizedBox(height: 20),
            Text(localizations.meal_title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: localizations.add_meal_title,
                border: const OutlineInputBorder(),
              ),
            ),
          
            Text(localizations.meal_descreption, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              controller: _descriptionController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: localizations.add_meal_descreption,
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
