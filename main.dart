import 'composition.dart';

void main() {
  var course = Course(
      name: 'Dart Programming',
      book: Book(name: 'Introduction to programming', isbn: '123-22-34255'),
      instructor: Instructor(name: 'John Rambo', gender: 'M', age: 45));

  // print(course.book.name);
   course.book.name = 'Introduction to C';
  // print(course.book.name);
  print(course.instructor.name);
  print(course.instructor.age);
  print(course);
  print(course.book.isbn);
}