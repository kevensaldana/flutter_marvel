import 'package:flutter_marvel/features/list_characters/domain/entities/list_character.dart';
import 'package:flutter_marvel/features/list_characters/domain/repositories/i_character_repository.dart';

class GetAllCharacterUseCase {
  final ICharacterRepository _characterRepository;

  GetAllCharacterUseCase({ICharacterRepository characterRepository})
      : _characterRepository = characterRepository;

  Future<ListCharacter> execute(int limit, int offset) async {
    var characters = await _characterRepository.list(limit, offset);
    return characters;
  }
}
