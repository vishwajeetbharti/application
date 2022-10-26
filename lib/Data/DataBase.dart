import 'dart:developer';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static const _dbname = 'mydatabase.db';
  static const _dbVersion = 1;
  static const _tableName = 'user_details';

  DataBaseHelper._privateConstructor();
  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();

  Future<Database> get database async {
    Database database;
    database = await _initiateDatabase();
    return database;
  }

  Future<Database> _initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbname);
    log(path);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) {
    db.execute(''' 
      CREATE TABLE IF NOT EXISTS user_details( 
      name TEXT PRIMARY KEY,
      date TEXT,
      average_day INTEGER
      )
      ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = await db.insert(_tableName, row);
    db.close();
    return id;
  }

  Future<List<Map<String, dynamic>>> read(Map<String, dynamic> row) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> data =
        await db.query(_tableName, columns: ['name']);
    db.close();
    return data;
  }
}
