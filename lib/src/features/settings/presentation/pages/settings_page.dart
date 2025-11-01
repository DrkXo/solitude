import 'package:flutter/material.dart';

import '../../../../core/localization/app_localizations.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double _fontSize = 16.0;
  bool _darkTheme = true;
  // ignore: prefer_final_fields
  String _readingMode = 'Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Font Size'),
            subtitle: Slider(
              value: _fontSize,
              min: 12.0,
              max: 24.0,
              divisions: 6,
              label: _fontSize.round().toString(),
              onChanged: (value) {
                setState(() {
                  _fontSize = value;
                });
              },
            ),
          ),
          SwitchListTile(
            title: const Text('Dark Theme'),
            value: _darkTheme,
            onChanged: (value) {
              setState(() {
                _darkTheme = value;
              });
            },
          ),
          ListTile(
            title: const Text('Reading Mode'),
            subtitle: Text(_readingMode),
            onTap: () {
              // Show dialog to select reading mode
            },
          ),
        ],
      ),
    );
  }
}
