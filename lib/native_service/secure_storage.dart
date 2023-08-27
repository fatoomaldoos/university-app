import 'package:flutter_secure_storage/flutter_secure_storage.dart';
class SecureStorage{
  // Create storage
  final storage = new FlutterSecureStorage();
  Future<void> save(String key , String value)async
  {
    // Write value
    await storage.write(key: key, value: value);

  }
  Future<String?> read(String key )async
  {
    // read key
    return await storage.read(key: key);
  }
}
