import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> iconColors = List.filled(4, Colors.black);

  void _toggleColor(int index) {
    setState(() {
      iconColors[index] =
          iconColors[index] == Colors.black ? Colors.indigo : Colors.black;
    });

    // Get the name of the icon based on the index
    String iconName = '';
    switch (index) {
      case 0:
        iconName = 'Personita';
        break;
      case 1:
        iconName = 'Relojito';
        break;
      case 2:
        iconName = 'Telefono';
        break;
      case 3:
        iconName = 'Correo';
        break;
    }

    // Show a Snackbar when the color is toggled
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$iconName toggled'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // Add a decoration to the Container to paint the border.
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.account_circle, size: 50),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Flutter McFlutter',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Text('Experienced App Developer'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('123 Main Street'),
                Text('415-555-0198'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _toggleColor(0),
                  child: Icon(
                    Icons.accessibility,
                    size: 30,
                    color: iconColors[0],
                  ),
                ),
                GestureDetector(
                  onTap: () => _toggleColor(1),
                  child: Icon(
                    Icons.timer,
                    size: 30,
                    color: iconColors[1],
                  ),
                ),
                GestureDetector(
                  onTap: () => _toggleColor(2),
                  child: Icon(
                    Icons.phone_android,
                    size: 30,
                    color: iconColors[2],
                  ),
                ),
                GestureDetector(
                  onTap: () => _toggleColor(3),
                  child: Icon(
                    Icons.email,
                    size: 30,
                    color: iconColors[3],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
