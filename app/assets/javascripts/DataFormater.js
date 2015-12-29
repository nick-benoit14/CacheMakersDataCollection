//Usage:
  /* [ {"Key":"Data Title", "values": [---values---]} ] */
function DataFormater(){};

/* Arrays = [ [val1], val2 ]; */
DataFormater.mergeArrays = function(Arrays, Transforms){
  arr = [];
  subarr = [];
  length = Arrays[0].length;

  //check lengths
  Arrays.forEach(function(value, index){
    if(Arrays[index].length != length){
      console.log("Array Length Does Not Match");
      return;}});

  //Merge arrays
  for(i = 0; i < length; i++){
    subarr = [];
    for(j = 0; j < Arrays.length; j++){
      var item;
      if(Transforms && typeof Transforms[j] === 'function'){item = Transforms[j](Arrays[j][i]);}
      else{item = Arrays[j][i];}
      subarr.push(item);
    }
    arr.push(subarr);
  }
  return arr;
}


DataFormater.format = function(keyValuePairs, Transforms){
  var arr = [];
  keyValuePairs.forEach(function(value, index){
    var dataValues = DataFormater.mergeArrays(value.values, Transforms);
    field = {"key": value.key, "values":dataValues};
    arr.push(field);
  });

return arr;
}
