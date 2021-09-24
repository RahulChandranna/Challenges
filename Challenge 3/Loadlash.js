# +------------------------------------------------------------------------------------
# | File : 	Get_NestedObject.JS
# | Version : 	1.00
# | Author:	Rahul C
# | Purpose : Function that you pass in the object and a key and get back the value.
# +------------------------------------------------------------------------------------
# | Maintenance History
# | -------------------
# | Name               Date       Version   C/R      Description
# | -----------------------------------------------------------------------------------
# | Rahul C     23-09-2021   1.00    Creation
# +------------------------------------------------------------------------------------


// Load the full build
const _ = require('lodash'); 

//Defining Object
var object = {"a": { "b": { "c": "d" }}};

//Loadlash _.get() function is used to fetch the values here based on the inputs
console.log("Result at 'a/b/c': ",_.get(object, 'a.b.c'));

//Defining Object
var object1 = {"x":{"y":{"z":"a"}}};

//Loadlash _.get() function is used to fetch the values here based on the inputs
console.log("Result at 'x/y/z': ",_.get(object1, 'x.y.z'));



//Have this in head section of your website
//<script scr="https://cdn.jsdelivr.net/npm/lodash@4.17.10/lodash.min.js"></script>


