// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  Data = $('#weatherdata').data('weatherdata');
  console.log(Data);

  trans = [function(str){return 0;}]

  console.log(DataFormater.format(Data, trans));
});


//TODO:
  //Move to seperate file
  //get transform functions working



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
      if(Transforms){
        if(typeof Transforms === 'function'){
          item = Transforms[j](Arrays[j][i]);
        }}
      else{item = Arrays[j][i];}
      subarr.push(item);
    }
    arr.push(subarr);
  }
  return arr;
}


DataFormater.format = function(keyValuePairs, Transforms){
  arr = [];
  keyValuePairs.forEach(function(value, index){
    var dataValues = DataFormater.mergeArrays(value.values, Transforms);
    field = {"key": value.key, "values":dataValues}
    arr.push(field);
  });
return arr;
}
