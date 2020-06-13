import 'package:flutter_marvel/features/list_characters/presentation/models/list_character.dart';

class HomePageState {}

class HomePageLoading extends HomePageState {}

class HomePageError extends HomePageState {}

class HomePagePopulated extends HomePageState {
  final ListCharacter result;
  HomePagePopulated(this.result);
}
