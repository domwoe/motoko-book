// ANCHOR: a
actor {
    let C = 11;
    var state = 0;

    public func atomic() : async () {
        let result = C % 2; // perform a computation

        state := result; // update the state

        state += 1; // update state again
    };

    public func atomic_fail() : async () {
        state += 1; // update the state

        let x = 0 / 0; // will trap
        
        state += x; // update state again
    };
};
// ANCHOR_END: a