import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select Theme:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => themeProvider.setTheme(0),
                  child: const Text('Theme A'),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.setTheme(1),
                  child: const Text('Theme B'),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.setTheme(2),
                  child: const Text('Theme C'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Select Font:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => themeProvider.setFont(0),
                  child: const Text('Lato'),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.setFont(1),
                  child: const Text('Roboto'),
                ),
                ElevatedButton(
                  onPressed: () => themeProvider.setFont(2),
                  child: const Text('Poppins'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
