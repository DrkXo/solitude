import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/app_localizations.dart';
import '../bloc/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.appTitle),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text('Theme Mode'),
                trailing: DropdownButton<ThemeMode>(
                  value: state.settings.themeMode,
                  onChanged: (ThemeMode? newMode) {
                    if (newMode != null) {
                      context.read<SettingsBloc>().add(
                        SettingsEvent.themeModeChanged(newMode),
                      );
                    }
                  },
                  items: ThemeMode.values.map((ThemeMode mode) {
                    return DropdownMenuItem<ThemeMode>(
                      value: mode,
                      child: Text(mode.name),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
