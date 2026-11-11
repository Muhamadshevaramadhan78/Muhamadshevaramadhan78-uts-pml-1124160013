```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhamad Sheva Ramadhan',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        brightness: Brightness.light,
        useMaterial3: true,
      ),

      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),

      themeMode: ThemeMode.system,

      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Profil Mahasiswa'),
                ),
              );
            },
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 55,
                  child: Icon(
                    Icons.person,
                    size: 60,
                  ),
                ),

                const SizedBox(height: 16),

                Text(
                  'Muhamad Sheva Ramadhan',
                  style: Theme.of(context)
                      .textTheme.headlineSmall,
                ),

                const SizedBox(height: 8),

                Text(
                  'NIM: 112416003',
                  style: Theme.of(context)
                      .textTheme.bodyMedium,
                ),

                Text(
                  'Program Studi: Teknik Informatika',
                  style: Theme.of(context)
                      .textTheme.bodyMedium,
                ),

                const SizedBox(height: 25),

                // Card Informasi Kontak
                Card(
                  child: Column(
                    children: const [
                      ListTile(
                        title: Text('Informasi Kontak'),
                      ),

                      InfoTile(
                        icon: Icons.email,
                        label: 'Email',
                        value: '112416003@global.ac.id'',
                      ),

                      InfoTile(
                        icon: Icons.phone,
                        label: 'Nomor HP',
                        value: '085694987870',
                      ),

                      InfoTile(
                        icon: Icons.school,
                        label: 'Kelas',
                        value: 'Malam',
                      ),

                      InfoTile(
                        icon: Icons.code,
                        label: 'GitHub',
                        value: 'https://github.com/Muhamadshevaramadhan78',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                // Card Keahlian dan Hobi
                Card(
                  child: Column(
                    children: const [
                      ListTile(
                        title: Text('Keahlian dan Hobi'),
                      ),

                      InfoTile(
                        icon: Icons.computer,
                        label: 'Keahlian',
                        value: 'Programming',
                      ),

                      InfoTile(
                        icon: Icons.web,
                        label: 'Bidang',
                        value: 'Web Development',
                      ),

                      InfoTile(
                        icon: Icons.sports_esports,
                        label: 'Hobi',
                        value: 'bersepeda',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Class InfoTile
class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
class InfoTile extends StatefulWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  State<InfoTile> createState() => _InfoTileState();
}

class _InfoTileState extends State<InfoTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icon),
      title: Text(widget.label),
      subtitle: Text(widget.value),
    );
  }
}