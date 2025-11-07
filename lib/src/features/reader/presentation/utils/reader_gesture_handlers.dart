import 'package:ebook_x/ebook_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../settings/data/models/settings_constants.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../bloc/reader_bloc.dart';

class ReaderGestureHandlers {
  static void Function(TapDownDetails) getOnTapDown(
    BuildContext context,
    EbookXController controller,
    SettingsState settingsState,
    int index,
  ) {
    return (details) {
      final screenWidth = MediaQuery.of(context).size.width;
      final tapX = details.localPosition.dx;

      if (tapX < screenWidth * 0.3) {
        // Left zone
        if (settingsState.appSettings.behavior.navigationMethod ==
            NavigationMethod.tap) {
          final action = settingsState.appSettings.behavior.tapZones.left;
          if (action == 'previousPage' && index > 0) {
            context.read<ReaderBloc>().add(
              const ReaderEvent.previousChapter(),
            );
          }
        }
      } else if (tapX > screenWidth * 0.7) {
        // Right zone
        if (settingsState.appSettings.behavior.navigationMethod ==
            NavigationMethod.tap) {
          final action = settingsState.appSettings.behavior.tapZones.right;
          if (action == 'nextPage' && index < controller.totalChapters - 1) {
            context.read<ReaderBloc>().add(
              const ReaderEvent.nextChapter(),
            );
          }
        }
      } else {
        // Center zone - toggle bars
        context.read<ReaderBloc>().add(
          const ReaderEvent.toggleBars(),
        );
      }
    };
  }

  static void Function(DragEndDetails)? getOnHorizontalDragEnd(
    BuildContext context,
    EbookXController controller,
    SettingsState settingsState,
    int index,
  ) {
    if (settingsState.appSettings.behavior.navigationMethod ==
        NavigationMethod.swipeHorizontal) {
      return (details) {
        const double swipeThreshold = 500.0;
        if (details.velocity.pixelsPerSecond.dx > swipeThreshold) {
          if (index > 0) {
            context.read<ReaderBloc>().add(
              const ReaderEvent.previousChapter(),
            );
          }
        } else if (details.velocity.pixelsPerSecond.dx < -swipeThreshold) {
          if (index < controller.totalChapters - 1) {
            context.read<ReaderBloc>().add(
              const ReaderEvent.nextChapter(),
            );
          }
        }
      };
    }
    return null;
  }

  static void Function(DragEndDetails)? getOnVerticalDragEnd(
    BuildContext context,
    EbookXController controller,
    SettingsState settingsState,
    int index,
  ) {
    if (settingsState.appSettings.behavior.navigationMethod ==
        NavigationMethod.swipeVertical) {
      return (details) {
        const double swipeThreshold = 500.0;
        if (details.velocity.pixelsPerSecond.dy < -swipeThreshold) {
          if (index < controller.totalChapters - 1) {
            context.read<ReaderBloc>().add(
              const ReaderEvent.nextChapter(),
            );
          }
        } else if (details.velocity.pixelsPerSecond.dy > swipeThreshold) {
          if (index > 0) {
            context.read<ReaderBloc>().add(
              const ReaderEvent.previousChapter(),
            );
          }
        }
      };
    }
    return null;
  }
}