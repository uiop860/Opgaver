
String testWord = "Hejsa";


void setup(){
  if (checkFirstLetterUpperCase(testWord)){
    println("true");
  }
  else{
    println("false");
  }
  
}


boolean checkFirstLetterUpperCase(String word){
  if (Character.isUpperCase(word.charAt(0))){
    return true;
  }
  return false;
}
