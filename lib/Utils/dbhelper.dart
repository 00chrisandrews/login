import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initializeUserDB() async {
    //Get database path
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "demo_asset_example.db");

    // Delete the old database
    await deleteDatabase(path);

    //Try opening (will work if it exists)
    Database db;
    try {
      db = await openDatabase(path, readOnly: false);
      print("Login Opening database");
    } catch (e) {
      print("Error $e");
    }

    //Create new database
    await db.execute(
        "CREATE TABLE Users (userid INTEGER PRIMARY KEY, username TEXT, password TEXT, points INTEGER)");

    //Insert some records in a transaction;
    await db.transaction((txn) async {
      int id1 = await txn.rawInsert(
          'INSERT INTO Users(username, password, points) VALUES("Test", "password", 0)');
      print("inserted1: $id1");
    });

    await db.close();
  }

  addUserToDB(String inputUsername, String inputPassword) async {
    //Get database path
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "demo_asset_example.db");

    //Try opening (will work if it exists)
    Database db;
    try {
      db = await openDatabase(path, readOnly: false);
      print("Create Account is Opening database");
    } catch (e) {
      print("Error $e");
    }

    //Insert some records in a transaction;
    await db.transaction((txn) async {
      int id1 = await txn.rawInsert(
          'INSERT INTO Users(username, password, points) VALUES("$inputUsername", "$inputPassword", 0)');
      print("inserted1: $id1");
    });

    //Close the database
    await db.close();
  }

  authLogin(String inputUsername, String inputPassword) async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "demo_asset_example.db");

    // try opening (will work if it exists)
    Database db;
    try {
      db = await openDatabase(path, readOnly: false);
      print("Login Opening database");
    } catch (e) {
      print("Error $e");
    }

    List<Map> list = await db.rawQuery(
        'SELECT * FROM Users WHERE username = "$inputUsername" AND password = "$inputPassword"');

    //How to print single elemenet.
    // var list3 = await db.rawQuery(
    //     'SELECT points FROM Users WHERE username = "Test" AND password = "password"');
    // print(list3[0]["points"]);

    // Close the database
    await db.close();

    return list;
  }
}
