// Order

// ANCHOR: a
import Order "mo:base/Order";
// ANCHOR_END: a

// ANCHOR: b
type Order = {
    #less;
    #equal;
    #greater;
};
// ANCHOR_END: b

// ANCHOR: c
type Color = {
    #Red;
    #Blue;
};

func sortColor(c1 : Color, c2 : Color) : Order {
    switch ((c1, c2)) {
        case ((#Red, #Blue)) { #greater };
        case ((#Red, #Red)) { #equal };
        case ((#Blue, #Blue)) { #equal };
        case ((#Blue, #Red)) { #less };
    };
};
// ANCHOR_END: c

// ANCHOR: d
let icpToday : Order = #less;

let icpTomorrow : Order = #greater;

let equal = Order.equal(icpToday, icpTomorrow);

assert equal == false;
// ANCHOR_END: d
