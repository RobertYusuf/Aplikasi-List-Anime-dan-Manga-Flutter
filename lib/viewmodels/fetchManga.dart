import 'package:uasmobile_flutter/models/AnimeManga.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'dart:async';

Future<List<Anime>> fetchAnime(http.Client client) async{
  final String baseURI = 'https://kitsu.io/api/edge/';
  final String animePath = 'manga?';
  final String sort = '&sort=popularityRank';
  final String limit = '&page[limit]=13';
  final String API = baseURI + animePath+ sort + limit;
  final response = await client.get(API);
  return compute(parseAnime,response.body);
  // if(response.statusCode == 200){
  //   return Anime.fromJson(jsonDecode(response.body));
  // }else{
  //   throw Exception('failed to load anime');
  // }
}

List<Anime>parseAnime(String responseBody){
  final parsed= jsonDecode(responseBody)['data'].cast<Map<String,dynamic>>();
  return parsed.map<Anime>((json)=>Anime.fromJson(json)).toList();
}