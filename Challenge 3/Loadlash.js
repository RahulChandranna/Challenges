
// Load the full build
const _ = require('lodash'); 

//Defining Object
var object = {"a": { "b": { "c": "d" }}};

//Loadlash _.get() function is used to fetch the values here based on the inputs
console.log("Result at 'a/b/c': ",_.get(object, 'a.b.c'));

//Defining Object
var objec1 = {"x":{"y":{"z":"a"}}};

//Loadlash _.get() function is used to fetch the values here based on the inputs
console.log("Result at 'x/y/z': ",_.get(object1, 'x.y.z'));



Have this in head section of your website
<script scr="https://cdn.jsdelivr.net/npm/lodash@4.17.10/lodash.min.js"></script>

Put the above functions there , it will work