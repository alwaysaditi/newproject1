import 'dart:io';
import 'package:sqflite/sqflite.dart' as sqf;
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:flutter/widgets.dart';

class DatabaseHelper {
  static final _dbName = 'bank_database.db';
  static final _dbVersion = 1;
  static final _tableNameOne = 'Users';
  static final _tableNameTwo = 'Transfers';
  static final columnIdone = '_id';
  static final name = 'name';
  static final curbal = 'curbal';
  static final email = 'email';
  static final columnIdtwo = '_id';
  static final s_name = 's_name';
  static final r_name = 'r_name';
  static final amount = 'amount';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static sqf.Database? _database;

  Future get database async {
    if (_database != null) return _database;
    _database = await initiateDatabase();
    return _database;
  }

  Future initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbName);
    return await sqf.openDatabase(path,
        version: _dbVersion, onCreate: onCreate);
  }

  void onCreate(sqf.Database db, int version) async {
    await db.execute('''
   CREATE TABLE $_tableNameOne (
     $columnIdone INTEGER PRIMARY KEY,
     $name TEXT NOT NULL,
     $curbal REAL,
     $email TEXT
   );
   
   ''');

    await db.execute('''
   CREATE TABLE $_tableNameTwo (
     $columnIdtwo INTEGER PRIMARY KEY,
     $s_name TEXT NOT NULL,
     $r_name TEXT NOT NULL,
     $amount REAL
   );
   
   ''');
    //Insert 9 more rows here
  }

  Future<int> insert(Map<String, dynamic> row) async {
    sqf.Database db = await instance.database;
    return await db.insert(_tableNameOne, row);
  }

  Future<List<Map<String, dynamic>>> query() async {
    sqf.Database db = await instance.database;
    return await db.query(_tableNameOne);
  }

  Future<int> update(Map<String, dynamic> row) async {
    sqf.Database db = await instance.database;
    int id = row[columnIdone];
    return await db
        .update(_tableNameOne, row, where: '$columnIdone=?', whereArgs: [id]);
  }

  Future<int> delete(Map<String, dynamic> row) async {
    sqf.Database db = await instance.database;
    int id = row[columnIdone];
    return await db
        .delete(_tableNameOne, where: '$columnIdone=?', whereArgs: [id]);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  final _tableNameOne = 'Users';
  final _tableNameTwo = 'Transfers';
  sqf.Database db = await instance.database;
  // DatabaseHelper ob = DatabaseHelper._privateConstructor();
  // ob.initiateDatabase();
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (1,"Aditi Paretkar", 22000, "aditiparetkar@gmail.com")');
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (2,"Arvind Paretkar", 25000, "arvindparetkar@gmail.com")');
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (3,"Ashwini Paretkar", 23000, "ashparetkar@gmail.com")');
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (4,"Vishakha Paretkar", 22000, "vishakha.cp@gmail.com")');
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (5,"Robert Green", 29000, "robert.vg@gmail.com")');
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (6,"Arthur Hayden", 28000, "arthur01@gmail.com")');
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (7,"Daniel Brown", 21000, "daniel.b101@gmail.com")');
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (8,"Cathy Lane", 25000, "cathy.rp@gmail.com")');
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (9,"Lisa Hayden", 27000, "lisahayden@gmail.com")');
  // await db.rawInsert(
  //     'INSERT INTO $_tableNameOne VALUES (10,"Jessica Brown", 22000, "jessica.b24@gmail.com")');
 
       
  final List<Map<String, dynamic>> maps = await db.query('Users');
  print(maps);
}
// DatabaseHelper();

//   static const databaseName = 'bank_database.db';
//   static final DatabaseHelper instance = DatabaseHelper();
//   static Database? _database;

//   Future<Database> get database async =>
//       _database ??= await initializeDatabase();

//   Future<Database> initializeDatabase() async {
//     return await openDatabase(join(await getDatabasesPath(), databaseName),
//         version: 1, onCreate: (Database db, int version) async {
//       await db.execute(
//           "CREATE TABLE Users(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, curbal REAL, email TEXT)");
//       await db.execute(
//           "CREATE TABLE Transfers(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,s_name TEXT, r_name TEXT, amount REAL)");
//     });
//   }
