import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_theme_state.freezed.dart';

@freezed
class ColorThemeState with _$ColorThemeState {
  const factory ColorThemeState({
    required ThemeMode themeMode,
  }) = _ColorThemeState;

  factory ColorThemeState.initial() {
    return const ColorThemeState(themeMode: ThemeMode.dark);
  }
}