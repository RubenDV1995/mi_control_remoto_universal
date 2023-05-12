import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mi_control_remoto_universal/domain/models/device_model.dart';

class LocalJsonService {
  final String _urlBase;

  LocalJsonService({
    required String urlBase,
  }) : _urlBase = urlBase;

  Future<List<Items>> request(String path) async {
    List<Items> _listDevices = [];
    try{
      final String response =
      await rootBundle.loadString('$_urlBase$path');
      Map<String, dynamic> valueMap = json.decode(response);
      final data = DeviceModel.fromJson(valueMap);
      _listDevices = data.items ?? [];
    }catch(e){
      _listDevices = [];
    }
    return _listDevices;
  }
}
