void printMulti(List<int>num){
  for(int i=0;i<num.length;i++){
    for(int j=0;j<num.length;j++){
      print("${num[j]}*${num[i]}");
    }
    print("");
  }
}
void main(){
  List<int>num=[2,3,5,7];
  printMulti(num);
}