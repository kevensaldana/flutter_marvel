import 'package:flutter_marvel/core/domain/entities/Character.dart';
import 'package:flutter_marvel/core/domain/factories/IEntityFactory.dart';

class EntityFactory implements IEntityFactory {
  @override
  Character newCharacter({String name, String image, int id, String description}) {
    return Character(
      name: name,
      image: image,
      id: id,
      description: description
    );
  }
}
