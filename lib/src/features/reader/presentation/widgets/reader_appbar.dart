import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../router/app_router.dart';
import '../bloc/reader_bloc.dart';

class ReaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReaderAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReaderBloc, ReaderState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded:
              (
                controller,
                currentChapterIndex,
                currentPageIndex,
                chapterOffsets,
                bookmarks,
                showBars,
                pageController,
              ) {
                return showBars
                    ? AppBar(
                        backgroundColor:
                            Theme.of(context).appBarTheme.backgroundColor ??
                            Theme.of(context).primaryColor,
                        actions: [
                          IconButton(
                            icon: const Icon(LucideIcons.settings),
                            onPressed: () {
                              context.pushNamed(AppRoutes.settings.name);
                            },
                          ),
                          IconButton(
                            icon: const Icon(LucideIcons.x),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      )
                    : const SizedBox.shrink();
              },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
