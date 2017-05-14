//Pair programming with Peter Thompson / Andrea Scott

var colors = ["Purple", "Red", "Green", "Yellow"];

var horsies = ["Carlton", "Pedro", "Pickles", "Bob"];

colors.push("Blue");
horsies.push("Barnaby");

console.log(colors);
console.log(horsies);

var key = horsies[0];
var obj = {};
obj[key] = colors[0];

console.log(obj);

function Car(year, make, isPieceOfCrap) {

  console.log("Your new car:", this);

  this.year = year;
  this.make = make;
  this.isPieceOfCrap = isPieceOfCrap;

  this.breakDownAgain = function() {
  if (isPieceOfCrap === true) { console.log("Stupid piece of shit car!"); }
  else  { console.log("NOOO WAY!"); } } 
}

var myCar = new Car(2003, "Subaru", true);
console.log(myCar);
myCar.breakDownAgain();

var yourCar = new Car(2008, "Honda", false);
console.log(yourCar);
yourCar.breakDownAgain();