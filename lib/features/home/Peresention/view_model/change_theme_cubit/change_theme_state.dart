part of 'change_theme_cubit.dart';

@immutable
sealed class ChangeThemeState {}

final class ChangeThemeInitial extends ChangeThemeState {}

final class ChangeThemeSuccess extends ChangeThemeState {}
