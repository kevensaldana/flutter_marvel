import 'package:flutter_marvel/features/list_characters/domain/entities/list_character.dart';

abstract class ICharacterRepository {
  Future<ListCharacter> list(int limit, int offset);
}
