void main() {
  var This = true;
  /*
   * numbers
   * strings
   * booleans
   * lists (also knowWn as arrays)
   * sets
   * maps
   * runes (for expresssing Unicode characters in string)
   * symbols
   */
  print('This is a string literal');
  
  print('$This is boolean literal');
  var x = 1;
  var hex = 0xDEADBEEF;
  var y = 1.1;
  var exponents = 1.42e-5;
  double z = 1; // z = 1.0
  print(x);
  print(hex);
  print(y);
  print(exponents);
  print(z);

  // String -> int
  var one = int.parse('1');
  assert(one == 1);
  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);
  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');
  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  //bitwise shift
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111

  //literal numbers are complie-time constants.
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
  print(msUntilRetry + 1);
  print(msUntilRetry.toString() + 1.toString());

  //Strings
  var s = 'string interpolation';
  assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, ' +
    'which is very handy.');
  assert(s.toUpperCase() == 'STRING INTERPOLATION');
  
  //String concatenate
  var s1 = 'String '
    'concatenation'
    " works even over line breaks.";
  assert(s1 == 'String concatenation works even over line breaks.');
  var s2 =  '+'+ ' concatenate';
  assert(s2 == '+ concatenate');

  var s3 = '''
    multi-line
    strings
    ''';
  var s4 = """
    multi-line
    strings too
    """;
  print(s3);
  print(s4);

  // excape sequence does not work in a raw string.
  var s5 = r'In a raw string, not even \n gets special treatment.';
  print(s5);

  // interpolation and const
  const int ten = 10;
  const double onePointZero = 1.0;
  const String hi = 'hi';

  var num = 10;
  var Bool = true;
  var str = 'str';
  const List week = ['Mon', 'Tue', 'Wed', 'Thr', 'Fri', "Sat", "Sun"];
  const validConstString = '$ten $onePointZero $hi';
  print(validConstString);
  // const invalidConstSTring = '$num $Bool $str $week';

  // Boolean
  var fullName = '';
  assert(fullName.isEmpty);


  var list1 = [1, 2, 3];
  print(list1[0]);
  print(list1[1]);


  // const list
  var constantList = const [1, 2, 3];
  print(constantList);
  // constantList[0] = 2; Error

  // list : spread operator
  var list2 = [0, ...list1];
  print(list2);
  print(list2.length);
  var list;
  var list3 = [0, ...?list]; // null-aware spread operator
  print(list3);

  // collection if
  // var nav = [
  //   'Home',
  //   'Funiture',
  //   'Plants',
  //   if (promoActive) 'Outlet'
  // ];

  // collection for
  var listOfInts = [1, 2, 3];
  var listOfStrings = [
    '#0',
    for (var i in listOfInts) '#$i'
  ];
  print(listOfStrings);

  // Sets
  var elements = <String>{'H', 'He', 'Li', 'Be', 'B', 'C'};
  print(elements);
  var test = <String>{};
  for (String e in elements) {
    test.add(e);
  }
  print(test);

  // Maps
  var family = {
    //Key: Value
    'father': '정현수',
    'mother': '박덕숙',
    'older brother': '정내훈',
    'younger brother': '정훈',
    'me': '정성훈'    
  };

  for (String i in family.keys) print(i + family[i]);
  var nobleGases = Map<int, String>();
  nobleGases[2] = 'He';
  nobleGases[10] = 'Ne';
  nobleGases[18] = 'Ar';
  print(nobleGases);
}