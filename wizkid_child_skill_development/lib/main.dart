import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WizKid – Unlock the Magic of Learning!',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('WizKid – Unlock the Magic of Learning!'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          Image.asset('assets/wizkid_logo.png', height: 120),
          const SizedBox(height: 16),
          const Text(
            'Turn screen time into learning time with magical adventures!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MagicQuestsScreen())),
            child: const Text('🧙‍♂️ Magic Quests'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const WizardsTowerScreen())),
            child: const Text('🏰 Wizard\'s Tower'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SpellbookScreen())),
            child: const Text('📖 Spellbook'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PotionBreaksScreen())),
            child: const Text('🧪 Potion Breaks'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ParentFeaturesScreen())),
            child: const Text('🧑‍🎓 Parent Features'),
          ),
        ],
      ),
    );
  }
}

// Placeholder screens for each feature
class MagicQuestsScreen extends StatelessWidget {
  const MagicQuestsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Magic Quests')),
      body: const Center(child: Text('Sample interactive lesson goes here!')),
    );
  }
}

class WizardsTowerScreen extends StatelessWidget {
  const WizardsTowerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wizard's Tower")),
      body: const Center(child: Text('Personalized learning dashboard!')),
    );
  }
}

class SpellbookScreen extends StatelessWidget {
  const SpellbookScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spellbook')),
      body: const Center(child: Text('Track your growing skills and knowledge!')),
    );
  }
}

class PotionBreaksScreen extends StatelessWidget {
  const PotionBreaksScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Potion Breaks')),
      body: const Center(child: Text('Healthy screen time reminders!')),
    );
  }
}

class ParentFeaturesScreen extends StatelessWidget {
  const ParentFeaturesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Parent Features')),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: const [
          ListTile(title: Text('🔮 Crystal Ball'), subtitle: Text('Real-time activity monitoring')), 
          ListTile(title: Text('⏳ Time-Turner'), subtitle: Text('Set screen time limits')), 
          ListTile(title: Text('🦉 Owl Post'), subtitle: Text('Progress reports and notifications')), 
          ListTile(title: Text('🎩 Sorting Hat'), subtitle: Text('Personalized learning recommendations')), 
        ],
      ),
    );
  }
}
