import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

abstract class BaseImageRepository {
  Future<List<String>> getAllImagePaths();
  Future<bool> imageExists(String fileName);
  Future<String> renameImage(String oldName, String newName);
  Future<void> deleteImage(String fileName);
  Future<String> saveImageFromUrl(String url, String fileName);
  Future<String> saveImage(Uint8List imageBytes, String fileName);
}

class ImageRepository implements BaseImageRepository {
  final _dio = Dio();
  Future<Directory> get _imagesDirectory async {
    final directory = await getApplicationDocumentsDirectory();
    final imagesDir = Directory(p.join(directory.path, 'images'));

    if (!await imagesDir.exists()) {
      await imagesDir.create(recursive: true);
    }

    return imagesDir;
  }

  Future<String> _getImagePath(String fileName) async {
    final dir = await _imagesDirectory;
    return p.join(dir.path, fileName);
  }

  @override
  Future<String> saveImage(Uint8List imageBytes, String fileName) async {
    final path = await _getImagePath(fileName);
    final file = File(path);
    await file.writeAsBytes(imageBytes);
    return path;
  }

  @override
  Future<String> saveImageFromUrl(String url, String fileName) async {
    final response = await _dio.get<List<int>>(
      url,
      options: Options(responseType: ResponseType.bytes),
    );
    if (response.statusCode == 200) {
      Uint8List imageBytes = Uint8List.fromList(response.data!);
      return saveImage(imageBytes, fileName);
    } else {
      throw Exception('Failed to download image: ${response.statusCode}');
    }
  }

  @override
  Future<void> deleteImage(String fileName) async {
    final path = await _getImagePath(fileName);
    final file = File(path);
    if (await file.exists()) {
      await file.delete();
    }
  }

  @override
  Future<String> renameImage(String oldName, String newName) async {
    final oldPath = await _getImagePath(oldName);
    final newPath = await _getImagePath(newName);
    final file = File(oldPath);
    if (await file.exists()) {
      await file.rename(newPath);
      return newPath;
    }
    return oldPath;
  }

  @override
  Future<List<String>> getAllImagePaths() async {
    final dir = await _imagesDirectory;
    final files = dir.listSync().whereType<File>();
    return files.map((file) => file.path).toList();
  }

  @override
  Future<bool> imageExists(String fileName) async {
    final path = await _getImagePath(fileName);
    return File(path).exists();
  }
}
