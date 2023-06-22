import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';

class DatabaseLoader {

  static String dbName = "sidlak.db";

  static Future<Database> load() async {
    String databasePath = (join(await getDatabasesPath(), dbName));
    bool exists = await databaseExists(databasePath);

    if(!exists) {
      try {
        await Directory(dirname(databasePath)).create(recursive: true);
      } catch (_) {}

      ByteData data = await rootBundle.load(join("assets", dbName));
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(databasePath).writeAsBytes(bytes, flush: true);
    }

    return await openDatabase(databasePath);
  }

  static Future<bool> exists() async {
    return await databaseExists(join(await getDatabasesPath(), dbName));
  }
}