import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../../core/services/backup_service.dart';
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
          body: Stack(
            children: [
              ListView(
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
                  const Divider(),
                  ExpansionTile(
                    title: Text('Backup & Restore'),
                    subtitle: Text(
                      'Export or import your settings and reading progress',
                    ),
                    children: [
                      ListTile(
                        title: Text('Export Settings'),
                        trailing: DropdownButton<ExportFormat>(
                          hint: Text('Select format'),
                          onChanged: (ExportFormat? format) {
                            if (format != null) {
                              context.read<SettingsBloc>().add(
                                SettingsEvent.exportSettings(format),
                              );
                            }
                          },
                          items: ExportFormat.values.map((ExportFormat format) {
                            return DropdownMenuItem<ExportFormat>(
                              value: format,
                              child: Text(format.name),
                            );
                          }).toList(),
                        ),
                      ),
                      ListTile(
                        title: Text('Import Settings'),
                        onTap: () async {
                          final result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ExportFormat.values
                                .map((e) => e.extension.toLowerCase())
                                .toList(),
                          );
                          if (result != null &&
                              result.files.single.path != null &&
                              context.mounted) {
                            context.read<SettingsBloc>().add(
                              SettingsEvent.importSettings(
                                result.files.single.path!,
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
              if (state.isBackupLoading)
                Container(
                  color: Colors.black54,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              if (state.backupMessage != null)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.green,
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      state.backupMessage!,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
