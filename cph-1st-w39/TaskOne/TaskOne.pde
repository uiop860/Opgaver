int arr[] = { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};
boolean swapper = true;



void setup() {
  while (swapper) {
    sortFuntion(arr);
  }
  //printArray(arr);
}



int[] sortFuntion(int[] sortArr) {

  int tmp;
  swapper = false;

  for (int i = 0; i<sortArr.length; i++) {

    if (i+1 >= arr.length) continue;
    else if (arr[i+1]< arr[i]) {


      tmp = sortArr[i+1];
      sortArr[i+1] = sortArr[i];
      sortArr[i] = tmp;
      printArray(sortArr);
      swapper = true;
    }
  }


  return sortArr;
}
