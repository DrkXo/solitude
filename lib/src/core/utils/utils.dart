library;

import 'dart:convert';
import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../config/config.dart';

part 'logger.dart';

/// Decodes a data URL to Uint8List if it's a valid data URL, otherwise returns null
Uint8List? decodeDataUrl(String dataUrl) {
  if (!dataUrl.startsWith('data:')) return null;

  final commaIndex = dataUrl.indexOf(',');
  if (commaIndex == -1) return null;

  final dataPart = dataUrl.substring(commaIndex + 1);
  try {
    return base64Decode(dataPart);
  } catch (e) {
    return null;
  }
}
