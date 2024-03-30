import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_converter_flutter/blocs/event/color_theme_event.dart';
import 'package:rate_converter_flutter/blocs/state/color_theme_state.dart';

class ColorThemeBloc extends Bloc<ColorThemeEvent, ColorThemeState> {
  ColorThemeBloc() : super(ColorThemeState.initial()) {
    on<ColorThemeEvent>((event, emit) {
      event.map(
          themeToggleEvent: (_) =>
              emit(state.copyWith(isLightMode: event.isLightMode)));
    });
  }
}