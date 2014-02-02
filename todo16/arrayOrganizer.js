// ### ARRAY ORGANIZER

// # Instructions:
// # Count elements in an Array by returning a hash with keys of the elements and values of the amount of times they occur.
 
// # test = ['cat', 'dog', 'fish', 'fish']
 
// # def count(array)
// #   ___
// # end
 
// # count(test) #=> { 'cat' => 1, 'dog' => 1, 'fish' => 2 })

function count(array){
  var returnValue = {};
  var givenArray = array;
  var allKeys = unique(givenArray);
  function unique(array){
    var uniqueArray = [];
    for(i=0; i<array.length; i++){
      standard = array[i];
      if (!uniqueArray.some(element != standard){
        uniqueArray << standard;
      }
    }
    return uniqueArray;}
  for(i=0; i<allKeys.length; i++){
    function isRepeated(element) {
      return element == allKeys[i];
    }
    returnValue[allKeys[i]] = givenArray.filter(isRepeated).length;
  }


};
