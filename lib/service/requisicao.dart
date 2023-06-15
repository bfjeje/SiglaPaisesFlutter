import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Requisicao{

  static Future<List> requisicaoPaises() async {

    Map paises = Map();
    var url = Uri.https('api.nobelprize.org', '/v1/country.json');

    http.Response response = await http.get(url);
    debugPrint("Resultado: ${response.body}");

    if(response.statusCode == 200){
      paises = jsonDecode(response.body);

      return paises.values.first;
    }else{
      throw Exception("Falhou a request");
    }
  }
}