// ANCHOR: a
import Array "mo:base/Array";
import Result "mo:base/Result";

let array = [4, 5, 2, 1];

func result(x : Nat) : Result.Result<Nat, Text> {
  if (x > 0) {
    #ok(100 / x);
  } else {
    #err "Cannot divide by zero";
  };
};

let mapResult : Result.Result<[Nat], Text> = Array.mapResult<Nat, Nat, Text>(array, result);
// ANCHOR_END: a