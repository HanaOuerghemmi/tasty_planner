import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget buildCategoryList(String category, BuildContext context) {
  final localizations = AppLocalizations.of(context)!;
  return Center(
    child: Text(
      "${localizations.no_items} $category",
      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
    ),
  );
}

void showAddItemDialog({
  required BuildContext context,
  required String selectedCategory,
  required List<String> categories,
  required Function(String) onCategoryChanged, // Callback to update category
}) {
  final TextEditingController itemNameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) {
      final localizations = AppLocalizations.of(context)!;
      return AlertDialog(
        title: Text(localizations.add_items),
        content: SingleChildScrollView(
          child: Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Item Name Input
              TextField(
                controller: itemNameController,
                decoration: InputDecoration(
                  hintText: localizations.item_name,
                  border: OutlineInputBorder(),
                ),
              ),
  
              // Category Dropdown
              DropdownButtonFormField<String>(
                value: selectedCategory,
                items: categories
                    .where((c) => c != categories[0]) // Exclude "All"
                    .map((category) => DropdownMenuItem(
                          value: category,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(category),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    onCategoryChanged(value); // Update selected category
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: localizations.category,
                ),
              ),

              // Quantity Input
              TextField(
                controller: quantityController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: localizations.item_quantity,
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(localizations.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              String itemName = itemNameController.text.trim();
              String quantity = quantityController.text.trim();
              if (itemName.isNotEmpty && quantity.isNotEmpty) {
                Navigator.pop(context);
                // Logic to add item goes here
              }
            },
            child: Text(localizations.save),
          ),
        ],
      );
    },
  );
}
