import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';
import 'package:isolate_handler/isolate_handler.dart';

void emmit(String pattern) {
  try {
    final _isolateName = Random().nextInt(100).toString();

    _isolates = IsolateHandler();

    _isolates.spawn(
      _entryPoint,
      name: _isolateName,
      onInitialized: () =>
          _isolates.send(
            jsonEncode({
              'isolate': _isolateName,
              'pattern': pattern,
            }),
            to: _isolateName,
          ),
    );
  } catch(e){
    Fluttertoast.showToast(
        msg: "Lo siento no pudimos sincronizarnos",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red.shade400,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}

IsolateHandler _isolates = IsolateHandler();

void _entryPoint(Map<String, dynamic> context) {
  final _messenger = HandledIsolate.initialize(context);

  _messenger.listen((pattern) {
    _emmit(pattern);
  });
}

void _emmit(String json) async {
  final _map = jsonDecode(json);

  await IrSensorPlugin.transmitString(pattern: _map['pattern']!);

  _isolates.kill(_map['isolate']!);
}