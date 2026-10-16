
import 'package:flutter/material.dart';
import 'word_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vocabulary"),
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Vocabulary"),
              accountEmail: Text("Learn • Practice • Grow"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.menu_book),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Saved Words"),
              leading: const Icon(Icons.bookmark),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text("Settings"),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 246, 225, 239),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.menu_book,
                  size: 40,
                  color: Color.fromARGB(255, 162, 76, 118),
                ),
                SizedBox(height: 10),
                Text(
                  "Learn New Words",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text("Build your vocabulary one word at a time."),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "Word Categories",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 240, 235),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.pets, color: Colors.brown),
              title: const Text("Animals"),
              subtitle: const Text("Learn animal names"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WordPage(
                      word: "Cat",
                      pronunciation: "/kæt/",
                      meaning: "A small animal often kept as a pet.",
                      example: "The cat is sleeping on the sofa.",
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 239, 232, 255),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.palette, color: Colors.purple),
              title: const Text("Colors"),
              subtitle: const Text("Learn different colors"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WordPage(
                      word: "Red",
                      pronunciation: "/red/",
                      meaning: "A color like that of a rose or blood.",
                      example: "She is wearing a red dress.",
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 229, 248, 237),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.restaurant, color: Colors.green),
              title: const Text("Food"),
              subtitle: const Text("Learn food names"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WordPage(
                      word: "Apple",
                      pronunciation: "/ˈæp.əl/",
                      meaning: "A round fruit that can be red or green.",
                      example: "I eat an apple every morning.",
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 242, 255),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.local_florist, color: Colors.teal),
              title: const Text("Nature"),
              subtitle: const Text("Learn words about nature"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WordPage(
                      word: "Flower",
                      pronunciation: "/ˈflaʊ.ər/",
                      meaning: "The colorful part of a plant.",
                      example: "The flower looks beautiful.",
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          const Center(
            child: Text(
              "Learn • Practice • Grow",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 162, 76, 118),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WordPage(
                word: "Cat",
                pronunciation: "/kæt/",
                meaning: "A small animal often kept as a pet.",
                example: "The cat is sleeping on the sofa.",
              ),
            ),
          );
        },
        backgroundColor: const Color.fromARGB(255, 162, 76, 118),
        foregroundColor: Colors.white,
        tooltip: "Learn a word",
        child: const Icon(Icons.menu_book),
      ),
    );
  }
}
