// Nat

import Nat "mo:base/Nat";

// ANCHOR: a
let a : Nat = 50;
let b : Nat = 50;

let divide = Nat.div(a, b);
assert divide == 1; 

let division = a / b; 
assert division == 1;
// ANCHOR_END: a
