void main(List<String> args) {
  Library lib = Library();

  lib.Addbook("title", "author", 2012);
  lib.showbooks();
}

class Library {
  List<Map<String, dynamic>> Books = [];

  Addbook(String title, String author, int year) {
    Map<String, dynamic> newbooks = {
      'title': title,
      'author': author,
      'year': year
    };
    Books.add(newbooks);
  }

  showbooks() {
    for (var i = 0; i < Books.length; i++) {
      print(Books[i]);
    }
  }
}
