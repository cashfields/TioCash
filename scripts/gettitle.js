function myFunction() 
{
  alert("Here Top");
  
  
  var x = document.getElementsByTagName("title")[0];

alert(x.innerHTML)

// or

alert(x.textContent)

// or
xx = document.querySelector("title")
alert(document.querySelector("title"))
  
  alert(xx.innerHTML)
  alert("Here mid")
  
  
  
  
  var x = document.querySelector("title");

alert(x.innerHTML)

// or

alert(x.textContent)

// or

zz = document.querySelector("title")
  alert(document.querySelector("title"))
  alert(zz.txt)
  alert("Here mid2")
  
  
  
  
  console.log(document.title)
  alert(document.title)
 
var theHead = document.head;
console.log(theHead.id); // "my-document-head";
console.log( theHead === document.querySelector("head") ); // true
//alert(theHead.id);
//alert("skip")
var wantedname = (theHead.id);
alert(wantedname);
document.getElementById("mywantedname").innerHTML = wantedname;

var x = document.title;
alert(x);
document.getElementById("myx").innerHTML = x
console.log(x); 
  
  alert("Here Bot");
}
