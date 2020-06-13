import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/ServerException.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/datasources/i_character_datasource.dart';
import 'package:flutter_marvel/features/list_characters/infrastructure/models/list_character_model.dart';
import 'package:flutter_marvel/utils/debug.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

class RemoteCharacterDataSource implements ICharacterDatasource{
  final http.Client client;
  RemoteCharacterDataSource({@required this.client});

  @override
  Future<ListCharacterModel> list(int limit, int offset) =>
      _getFromUrl('https://angular.kevensaldana.com/api/list-characters');

  Future<ListCharacterModel> _getFromUrl(String url) async {
    final response = await client.get(
      url
    );
    if (response.statusCode == 200) {
      return ListCharacterModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
