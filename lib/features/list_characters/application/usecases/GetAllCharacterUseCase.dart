
import 'package:flutter_marvel/features/list_characters/domain/entities/ListCharacter.dart';
import 'package:flutter_marvel/features/list_characters/domain/repositories/ICharacterRepository.dart';

class GetAllCharacterUseCase {
  final ICharacterRepository _characterRepository;

  GetAllCharacterUseCase({ICharacterRepository characterRepository})
      : _characterRepository = characterRepository;

  @override
  Future<ListCharacter> execute(int limit, int offset) async {
    var characters = await _characterRepository.list(limit, offset);
    return characters;
  }
}
