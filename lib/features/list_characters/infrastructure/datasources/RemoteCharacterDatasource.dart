import 'dart:convert';
import 'package:flutter_marvel/features/list_characters/infrastructure/ServerException.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/datasources/ICharacterDatasource.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/models/ListCharacterModel.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class RemoteCharacterDataSource implements ICharacterDatasource{
  final http.Client client;
  RemoteCharacterDataSource({@required this.client});

  @override
  Future<ListCharacterModel> list(int limit, int offset) =>
      _getFromUrl('https://angular.kevensaldana.com/api/list-characters');

  _getFromUrl(String url) async {
    final response = await client.get(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return ListCharacterModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
