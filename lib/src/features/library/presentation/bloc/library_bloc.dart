import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_bloc.freezed.dart';
part 'library_event.dart';
part 'library_state.dart';


class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc() : super(_Initial()) {
    on<LibraryEvent>((event, emit) {});
  }
}
