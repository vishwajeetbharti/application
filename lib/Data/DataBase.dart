import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static const _dbname = 'MyDatabase.db';
  static const _dbVersion = 1;
  static const _tableName = 'Mytable';

  static const columnId = '_id';
  static const columnName = 'Past';
  static const columnName2 = 'Prediction';
  static const columnName3 = 'Satatics';

  DataBaseHelper._privateConstructor();
  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();

  Future<Database> get database async {
    Database database;
    database = await _initiateDatabase();
    if (database != null) return database;
    database = await _initiateDatabase();
    return database;
  }

  _initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbname);
    await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) {
    db.query(''' 
      CREATE TABLE $_tableName( 
      $columnId INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
      $columnName DATE,
      $columnName2 DATE,
      $columnName3 INTEGER
      )
      
      
      ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tableName, row);
  }
}
