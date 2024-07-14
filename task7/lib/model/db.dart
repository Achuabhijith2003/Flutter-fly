import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

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
    final dbPath = join(path, 'ydb.db');
    return await openDatabase(dbPath, version: 1, onCreate: _createDb);
  }

  Future<void> _createDb(Database db, int version) async {
    try {
      // create tables here
      await db.execute(
          'CREATE TABLE mytable (id INTEGER PRIMARY KEY, name TEXT,Value TEXT)');
      await db
          .execute("INSERT INTO mytable (name, Value) VALUES ('John', 'Doe')");
      await db
          .execute("INSERT INTO mytable (name, Value) VALUES ('Jane', 'Doe')");
    } catch (e) {
      print('Error creating database: $e');
    }
  }
}
