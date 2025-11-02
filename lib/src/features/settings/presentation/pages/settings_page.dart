import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/backup_service.dart';
import '../../data/models/settings_constants.dart';
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
            title: Text('Settings'),
            actions: [
              TextButton(
                onPressed: () {
                  context.read<SettingsBloc>().add(
                    const SettingsEvent.resetToDefaults(),
                  );
                },
                child: const Text('Reset'),
              ),
            ],
          ),
           body: Stack(
             children: [
               if (state.errorMessage != null)
                 Container(
                   color: Colors.red,
                   padding: const EdgeInsets.all(16),
                   child: Text(
                     'Error: ${state.errorMessage}',
                     style: const TextStyle(color: Colors.white),
                   ),
                 ),
               ListView(
                children: [
                  // Display Settings
                  _buildDisplaySettings(context, state),
                  const Divider(),

                  // Behavior Settings
                  _buildBehaviorSettings(context, state),
                  const Divider(),

                  // Accessibility Settings
                  _buildAccessibilitySettings(context, state),
                  const Divider(),

                  // Library Settings
                  _buildLibrarySettings(context, state),
                  const Divider(),

                  // Annotations Settings
                  _buildAnnotationsSettings(context, state),
                  const Divider(),

                  // UI Settings
                  _buildUISettings(context, state),
                  const Divider(),

                  // Localization Settings
                  _buildLocalizationSettings(context, state),
                  const Divider(),

                  // Developer Settings
                  _buildDeveloperSettings(context, state),
                  const Divider(),

                  // Backup & Restore
                  _buildBackupSettings(context, state),
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

  Widget _buildDisplaySettings(BuildContext context, SettingsState state) {
    return ExpansionTile(
      title: const Text('Display'),
      children: [
        ListTile(
          title: const Text('Font Size'),
          trailing: SizedBox(
            width: 120,
            child: Slider(
              value: state.appSettings.display.fontSize,
              min: minFontSize,
              max: maxFontSize,
              divisions: (maxFontSize - minFontSize).round(),
              label: state.appSettings.display.fontSize.round().toString(),
              onChanged: (value) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.fontSizeChanged(value),
                );
              },
            ),
          ),
        ),
        ListTile(
          title: const Text('Font Family'),
          trailing: DropdownButton<FontFamily>(
            value: state.appSettings.display.fontFamily,
            items: FontFamily.values
                .map((font) => DropdownMenuItem(value: font, child: Text(font.displayName)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.fontFamilyChanged(value),
                );
              }
            },
          ),
        ),
        ListTile(
          title: const Text('Theme'),
          trailing: DropdownButton<ThemeOption>(
            value: state.appSettings.display.theme,
            items: ThemeOption.values
                .map((theme) => DropdownMenuItem(value: theme, child: Text(theme == ThemeOption.device ? 'Device' : theme.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.themeChanged(value),
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildBehaviorSettings(BuildContext context, SettingsState state) {
    return ExpansionTile(
      title: const Text('Behavior'),
      children: [
        ListTile(
          title: const Text('Reading Direction'),
          trailing: DropdownButton<ReadingDirection>(
            value: state.appSettings.behavior.readingDirection,
            items: ReadingDirection.values
                .map((dir) => DropdownMenuItem(value: dir, child: Text(dir.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.readingDirectionChanged(value),
                );
              }
            },
          ),
        ),
        ListTile(
          title: const Text('Navigation Method'),
          trailing: DropdownButton<NavigationMethod>(
            value: state.appSettings.behavior.navigationMethod,
            items: NavigationMethod.values
                .map((method) => DropdownMenuItem(value: method, child: Text(method.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.navigationMethodChanged(value),
                );
              }
            },
          ),
        ),
        SwitchListTile(
          title: const Text('Remember Last Position'),
          value: state.appSettings.behavior.rememberLastPosition,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.rememberLastPositionChanged(value),
            );
          },
        ),
        SwitchListTile(
          title: const Text('Sync Progress'),
          value: state.appSettings.behavior.syncProgress,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.syncProgressChanged(value),
            );
          },
        ),
      ],
    );
  }

  Widget _buildAccessibilitySettings(BuildContext context, SettingsState state) {
    return ExpansionTile(
      title: const Text('Accessibility'),
      children: [
        SwitchListTile(
          title: const Text('Dyslexic Font'),
          value: state.appSettings.accessibility.dyslexicFont,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.dyslexicFontChanged(value),
            );
          },
        ),
        SwitchListTile(
          title: const Text('High Contrast'),
          value: state.appSettings.accessibility.highContrast,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.highContrastChanged(value),
            );
          },
        ),
        SwitchListTile(
          title: const Text('Immersive Mode'),
          value: state.appSettings.accessibility.immersiveMode,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.immersiveModeChanged(value),
            );
          },
        ),
      ],
    );
  }

  Widget _buildLibrarySettings(BuildContext context, SettingsState state) {
    return ExpansionTile(
      title: const Text('Library'),
      children: [
        ListTile(
          title: const Text('Sort By'),
          trailing: DropdownButton<SortBy>(
            value: state.appSettings.library.sortBy,
            items: SortBy.values
                .map((sort) => DropdownMenuItem(value: sort, child: Text(sort.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.sortByChanged(value),
                );
              }
            },
          ),
        ),
        ListTile(
          title: const Text('View Style'),
          trailing: DropdownButton<ViewStyle>(
            value: state.appSettings.library.viewStyle,
            items: ViewStyle.values
                .map((style) => DropdownMenuItem(value: style, child: Text(style.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.viewStyleChanged(value),
                );
              }
            },
          ),
        ),
        SwitchListTile(
          title: const Text('Show Covers'),
          value: state.appSettings.library.showCovers,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.showCoversChanged(value),
            );
          },
        ),
      ],
    );
  }

  Widget _buildAnnotationsSettings(BuildContext context, SettingsState state) {
    return ExpansionTile(
      title: const Text('Annotations'),
      children: [
        SwitchListTile(
          title: const Text('Sync Annotations'),
          value: state.appSettings.annotations.sync,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.annotationsSyncChanged(value),
            );
          },
        ),
        SwitchListTile(
          title: const Text('Auto Save'),
          value: state.appSettings.annotations.autoSave,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.autoSaveAnnotationsChanged(value),
            );
          },
        ),
        ListTile(
          title: const Text('Export Format'),
          trailing: DropdownButton<AnnotationExportFormat>(
            value: state.appSettings.annotations.exportFormat,
            items: AnnotationExportFormat.values
                .map((format) => DropdownMenuItem(value: format, child: Text(format.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.exportFormatChanged(value),
                );
              }
            },
          ),
        ),
        SwitchListTile(
          title: const Text('Show Sidebar'),
          value: state.appSettings.annotations.showSidebar,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.showSidebarChanged(value),
            );
          },
        ),
      ],
    );
  }

  Widget _buildUISettings(BuildContext context, SettingsState state) {
    return ExpansionTile(
      title: const Text('UI'),
      children: [
        ListTile(
          title: const Text('Toolbar Position'),
          trailing: DropdownButton<ToolbarPosition>(
            value: state.appSettings.ui.toolbarPosition,
            items: ToolbarPosition.values
                .map((pos) => DropdownMenuItem(value: pos, child: Text(pos.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.toolbarPositionChanged(value),
                );
              }
            },
          ),
        ),
        SwitchListTile(
          title: const Text('Enable Animations'),
          value: state.appSettings.ui.enableAnimations,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.enableAnimationsChanged(value),
            );
          },
        ),
        SwitchListTile(
          title: const Text('Sound Feedback'),
          value: state.appSettings.ui.soundFeedback,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.soundFeedbackChanged(value),
            );
          },
        ),
      ],
    );
  }

  Widget _buildLocalizationSettings(BuildContext context, SettingsState state) {
    return ExpansionTile(
      title: const Text('Localization'),
      children: [
        ListTile(
          title: const Text('Language'),
          trailing: DropdownButton<Language>(
            value: state.appSettings.localization.language,
            items: Language.values
                .map((lang) => DropdownMenuItem(value: lang, child: Text(lang.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.languageChanged(value),
                );
              }
            },
          ),
        ),
        ListTile(
          title: const Text('Region'),
          trailing: DropdownButton<Region>(
            value: state.appSettings.localization.region,
            items: Region.values
                .map((region) => DropdownMenuItem(value: region, child: Text(region.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.regionChanged(value),
                );
              }
            },
          ),
        ),
        ListTile(
          title: const Text('Date Format'),
          trailing: DropdownButton<DateFormat>(
            value: state.appSettings.localization.dateFormat,
            items: DateFormat.values
                .map((format) => DropdownMenuItem(value: format, child: Text(format.value)))
                .toList(),
            onChanged: (value) {
              if (value != null) {
                context.read<SettingsBloc>().add(
                  SettingsEvent.dateFormatChanged(value),
                );
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDeveloperSettings(BuildContext context, SettingsState state) {
    return ExpansionTile(
      title: const Text('Developer'),
      children: [
        SwitchListTile(
          title: const Text('Debug Logging'),
          value: state.appSettings.developer.debugLogging,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.debugLoggingChanged(value),
            );
          },
        ),
        SwitchListTile(
          title: const Text('Enable DevTools'),
          value: state.appSettings.developer.enableDevTools,
          onChanged: (value) {
            context.read<SettingsBloc>().add(
              SettingsEvent.enableDevToolsChanged(value),
            );
          },
        ),
      ],
    );
  }

  Widget _buildBackupSettings(BuildContext context, SettingsState state) {
    return ExpansionTile(
      title: const Text('Backup & Restore'),
      subtitle: const Text('Export or import your settings and reading progress'),
      children: [
        ListTile(
          title: const Text('Export Settings'),
          trailing: DropdownButton<ExportFormat>(
            hint: const Text('Select format'),
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
          title: const Text('Import Settings'),
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
    );
  }
}
