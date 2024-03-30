import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_theme_event.freezed.dart';

@freezed
class ColorThemeEvent with _$ColorThemeEvent {
  const factory ColorThemeEvent.themeToggleEvent(
      {required ThemeMode themeMode}) = _themeToggleEvent;
}