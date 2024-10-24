void main(){
  position(1);
  position(11,"world");
  named(1, s1:"world");
}
void position(int i, [String s1 = "hello"]){
  if(i==1) {
    print("111, $s1");
  }
  else{
    print("${i},$s1");
  }
}

void named(int i, {String s1 = "hello"}){
  print("$i,$s1");
}