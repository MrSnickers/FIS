function countSentences(string) {
  sentenceCount = 0;
  punctuation = ".?!";
  for (index = 0; index < string.length; index++){
    if (punctuation.indexOf(string[index]) > -1){
      sentenceCount++;
    }
  }
  return sentenceCount;
}