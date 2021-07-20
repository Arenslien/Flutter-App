void main() {
  //variables 1
  var name = 'Enactus';
  var year = 2020;
  var pi = 3.14;
  var list = ['A', 'B', 'C', "D"];
  print(name);
  print(year);
  print(pi);
  print(list);

  //variables object, dynamic
  dynamic var1 = 'Dynamic!';
  String var2 = 'String!';
  print(var1);
  print(var1 + '\n' + var2);

  // null 
  int null_test = 100;
  print(null_test);
  assert(null_test != null, 'null_test is null');
}