import 'package:flutter_marvel/features/list_characters/presentation/models/character.dart';

class ListCharacter {
  int count;
  int limit;
  List<Character> result;
  int total;
  ListCharacter({this.count, this.limit, this.result, this.total});
}
