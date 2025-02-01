void main(){
int start=1;
int end=128;
  int target=20;
  int result=binarysearch(start,end,target);
  if(result!=-1){
    print('The number $target was found at index $result');
  }else{
    print("The number not found");
  }
}
int binarysearch(int start,int end,int target){
  int low=start;
  int high=end;
  while(low<=high){
    int mid=(high+low)~/ 2;
    if(mid==target){
      return mid;
    }else if(mid<target){
      low=mid+1;
    }else{
      high=mid-1;

    }
  }
  return -1;
}