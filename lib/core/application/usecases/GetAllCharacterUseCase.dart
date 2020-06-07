import 'dart:collection';
import 'package:flutter_marvel/core/domain/entities/Character.dart';
import 'package:flutter_marvel/core/domain/repositories/ICharacterRepository.dart';

class GetAllCharacterUseCase {
  final ICharacterRepository _characterRepository;

  GetAllCharacterUseCase({ICharacterRepository characterRepository})
      : _characterRepository = characterRepository;

  @override
  Future<UnmodifiableListView<Character>> execute(int limit, int offset) async {
    var characters = await _characterRepository.findAll(limit, offset);
    return UnmodifiableListView(characters);
  }
}
