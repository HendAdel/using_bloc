import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:using_bloc/models/book.dart';

class BookRepoistory {
  Future<List<Book>?> GetBooks() async {
    try {
      var resultFromJson = await rootBundle.loadString('assets/books.json');
      var books = json.decode(resultFromJson);
      return List<Book>.from(books.map((json) => Book.fromJson(json)).toList());
    } catch (e) {
      return null;
    }
  }
}
