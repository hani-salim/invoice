import 'package:get_storage/get_storage.dart';

class HLocalStorage {
  static final HLocalStorage _instance = HLocalStorage._instance;

  factory HLocalStorage() {
    return _instance;
  }
  HLocalStorage.internal();

  final _storage = GetStorage();

  Future<void> saveData<T>({required String key, required T value}) async {
    await _storage.write(key, value);
  }

  T? readData<T>({required String key}) {
    _storage.read(key);
  }
   Future<void> removeData<T>({required String key}) async {
    await _storage.remove(key);
  }
   Future<void> clearAll<T>() async {
    await _storage.erase();
  }
  }
