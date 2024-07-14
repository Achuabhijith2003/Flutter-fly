import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  List<Map<String, dynamic>> _data = [];

  Future<void> _initDbAndGetData() async {
    try {
      final databaseHelper = DatabaseHelper();
      final db = await databaseHelper.db;
      final List<Map<String, dynamic>> maps = await db.query('mytable');
      setState(() {
        _data = maps;
      });
    } catch (e) {
      print('Error: $e'); // print the error to the console
    }
  }

  @override
  void initState() {
    super.initState();
    _initDbAndGetData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: _data.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_data[index]['name']),
                    subtitle: Text(_data[index]['Value']),
                  ),
                );
              },
            ),
    );
  }
}

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper.internal();

  Future<Database> get db async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDb();
    return _database!;
  }

  Future<Database> initDb() async {
    final path = await getDatabasesPath();
    final dbPath = join(path, 'mydb.db');
    return await openDatabase(dbPath, version: 1, onCreate: _createDb);
  }

  Future<void> _createDb(Database db, int version) async {
    try {
      // create tables here
      await db.execute(
          'CREATE TABLE IF NOT EXISTS mytable (id INTEGER PRIMARY KEY, name TEXT,Value TEXT)');
      await db
          .execute("INSERT INTO mytable (name, Value) VALUES ('John', 'Doe')");
      await db
          .execute("INSERT INTO mytable (name, Value) VALUES ('Jane', 'Doe')");
    } catch (e) {
      print('Error creating database: $e');
    }
  }
}
