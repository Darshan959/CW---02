import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Chicken Alfredo Pasta',
      'ingredients':
          '2 boneless chicken breasts, 1 tbsp olive oil, 1 lb fettuccine pasta, 2 cups heavy cream, 1 cup Parmesan, 4 tbsp butter, 3 cloves garlic, Salt and pepper, Fresh parsley',
      'instructions':
          '1. Cook chicken and slice...\n2. Boil pasta...\n3. Make Alfredo sauce...\n4. Add Parmesan and stir...\n5. Combine chicken and pasta...',
    },
    {
      'name': 'Pepperoni Pizza',
      'ingredients':
          '1 pizza dough, 1/2 cup pizza sauce, 2 cups mozzarella, 1/2 cup pepperoni, 1 tbsp olive oil, 1 tsp oregano, 1/2 tsp garlic powder, Fresh basil',
      'instructions':
          '1. Preheat oven...\n2. Roll out dough...\n3. Spread sauce and add cheese...\n4. Add pepperoni and season...\n5. Bake for 12-15 minutes...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(
                  recipes[index]['name']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Tap for details',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(recipe: recipes[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
