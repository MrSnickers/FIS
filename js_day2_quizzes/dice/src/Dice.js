function Dice(){}

Dice.prototype.roll = function(){
  return Math.round(Math.random()*6);
}