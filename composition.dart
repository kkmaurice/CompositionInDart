import 'dart:ffi';

class Book {
  String _name;
  String _isbn;
  Book({
    required name,
    required isbn,
  })  : _name = name,
        _isbn = isbn;

  String get name => _name;
  String get isbn => _isbn;
  set name(String name) => _name = name;
  set isbn(String isbn) => _isbn = isbn;

  @override
  String toString() {
    return 'The name of book is: $_name\nThe isbn number is: $_isbn';
  }
}

class Instructor {
  String _name;
  String _gender;
  int _age;
  Instructor({
    required name,
    required gender,
    required age,
  })  : _name = name,
        _gender = gender,
        _age = age;

  String get name => _name;
  String get gender => _gender;
  int get age => _age;

  set name(String name) => _name = name;
  set gender(String gender) => _gender = gender;
  set age(int name) => _age = age;

  @override
  String toString() {
    return 'Name of instructor is: $_name\nThe instructor is a: $_gender\nThe age of instructor is: $_age';
  }
}

class Course {
  String _name;
  Book _book;
  Instructor _instructor;
  Course({
    required name,
    required book,
    required instructor,
  })  : _name = name,
        _book = book,
        _instructor = instructor;

  String get name => _name;
  Book get book => _book;
  Instructor get instructor => _instructor;

  set name(String name) => _name = name;
  set book(Book book) => _book = book;
  set instructor(Instructor instructor) => _instructor = instructor;

  @override
  String toString() {
    return 'The name of course is: $_name\n$_book\n$_instructor';
  }
}

void main() {
  var course = Course(
      name: 'Dart Programming',
      book: Book(name: 'Introduction to programming', isbn: '123-22-34255'),
      instructor: Instructor(name: 'John Rambo', gender: 'M', age: 45));

  // print(course.book.name);
   course.book.name = 'Introduction to C';
  // print(course.book.name);
  print(course);
  print(course.book.isbn);
}
