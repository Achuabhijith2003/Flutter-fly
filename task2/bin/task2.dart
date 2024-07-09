void main(List<String> args) {
  print("Hello world");
  print("Using For loop");
  for (int i = 0; i < 101; i++) {
    print(i);
  }
  print("Using while loop");
  int j = 1, k = 1;
  while (j <= 100) {
    print(j);
    j++;
  }
  print("Using do while loop");
  do {
    print(k);
    k++;
  } while (k <= 100);
  print("Function");

  print("The sum is ${add(5, 3)}");
}

add(int a, int b) {
  return a + b;
}
