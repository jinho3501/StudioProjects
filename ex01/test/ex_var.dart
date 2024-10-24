void main() {
  //js - var (어떠한 타입도 들어가는 자료형)
  //  한번 자료형이 정해지면 바뀌지 않음
  var a = 10;

// C# - dynamic (어떠한 타입도 들어가는 타입형)
  dynamic d1 = 3.14;
  d1 = "hello";

// formating
  //$변수명
  String name = 'flutter';
  int version = 3;
  print("$name 의  버전은 $version 입니다");
  print("$name 의  버전은 ${version + 1} 입니다");
}