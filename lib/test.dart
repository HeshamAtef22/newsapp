void main () async{

  Future.delayed(Duration(seconds: 3),()=> print("Executed after 3 seconds"));
  print("Helloo World");
  final test = await printTest();
  print(test);
  Future.delayed(Duration(seconds: 2),()=> print("Executed after 2 seconds"));
  print("Hey!!!!");
  Future.delayed(Duration(seconds: 1),()=> print("Executed after 1 seconds"));

}

Future<String> printTest() {
  final Future<String> value = Future.value("Hello After Future");
  return value;
}
