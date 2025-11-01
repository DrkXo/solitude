import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../core/services/ebook_library_service.dart';
import '../core/services/reader_service.dart';
import '../features/library/presentation/pages/library_page.dart';
import '../features/reader/presentation/bloc/reader_bloc.dart';
import '../features/reader/presentation/pages/reader_page.dart';
import '../features/settings/presentation/pages/settings_page.dart';

part 'router.dart';
part 'routes.dart';
