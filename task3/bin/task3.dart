void main(List<String> args) {
  Car("Toyato", "Corolla", 2020);
  Dog dog = Dog();
  dog.makesound();
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

class Car {
  String brand = "";
  String model = "";
  int year = 0;
  Car(String brand, String model, int year) {
    print("brand : $brand model : $model Year : $year");
  }
}

class Animal {
  makesound() {
    print("Some generic sound");
  }
}

class Dog extends Animal {
  @override
  makesound() {
    print("Bark");
  }
}
