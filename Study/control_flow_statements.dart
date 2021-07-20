void main() {
  var year = 2020;
  var fly = ['butterfly', 'bee', 'bird', 'owl'];
  int number = 0;
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20st century');
  }

  for (var object in fly) {
    print(object);
  }
  for (int i = 0; i < 100; i++) {
    print(i*i);
  }

  while (number <= 1000) {
    print(number++);
  }
}