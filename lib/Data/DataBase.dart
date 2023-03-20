import 'dart:developer';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static const _dbname = 'mydatabase.db';
  static const _dbVersion = 1;
  static const _userDetails = 'user_details';
  static const _userData = 'user_data';
  static const name = 'name';
  static const sNo = 'Sno';
  static const startDate = 'start';
  static const endDate = 'end';
  static const averageDay = 'average_day';
  static const prediction = 'prediction';
  static const duration = 'duration';
  static const start = 'start';

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
      CREATE TABLE IF NOT EXISTS $_userDetails( 
      $name TEXT PRIMARY KEY,
      $startDate TEXT,
      $endDate TEXT,
      $averageDay INTEGER
      )
      ''');
    db.execute('''
    CREATE TABLE IF NOT EXISTS $_userData(
    $sNo INTEGER PRIMARY KEY,
    $startDate DATE,
    $endDate DATE,
    $duration INTEGER,
    $name REFERENCES $_userDetails($name) ON DELETE CASCADE
    )
    ''');
  }

  insertUserDetails(Map<String, dynamic> row) async {
    try {
      Database db = await instance.database;
      return await db.insert(_userDetails, row);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  insertUserData(Map<String, dynamic> row) async {
    try {
      Database db = await instance.database;
      return await db.insert(_userData, row);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  toDeleteData(String date) async {
    Database db = await instance.database;
    return await db.delete(_userData, where: '$endDate=?', whereArgs: [date]);
  }

  Future<List<Map<String, dynamic>>> getData() async {
    Database db = await instance.database;
    return await db.query(_userData);
  }

  Future<List<Map<String, dynamic>>> getUserDetails() async {
    Database db = await instance.database;
    return await db.query(_userDetails);
  }
}
