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
                title: const Text('Font Size'),
                subtitle: Slider(
                  value: state.fontSize,
                  min: 12.0,
                  max: 24.0,
                  divisions: 6,
                  label: state.fontSize.round().toString(),
                  onChanged: (value) {
                    context.read<SettingsBloc>().add(
                      SettingsEvent.fontSizeChanged(value),
                    );
                  },
                ),
              ),
              ListTile(
                title: const Text('Reading Mode'),
                subtitle: Text(state.readingMode),
                onTap: () async {
                  final selected = await showDialog<String>(
                    context: context,
                    builder: (context) => SimpleDialog(
                      title: const Text('Select Reading Mode'),
                      children: [
                        SimpleDialogOption(
                          onPressed: () => Navigator.pop(context, 'Page'),
                          child: const Text('Page'),
                        ),
                        SimpleDialogOption(
                          onPressed: () => Navigator.pop(context, 'Scroll'),
                          child: const Text('Scroll'),
                        ),
                      ],
                    ),
                  );
                  if (selected != null && context.mounted) {
                    context.read<SettingsBloc>().add(
                      SettingsEvent.readingModeChanged(selected),
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
