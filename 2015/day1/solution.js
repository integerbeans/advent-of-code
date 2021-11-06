"use strict";

const fs = require('fs');
const santa = fs.readFileSync("./input.txt", "utf-8");

function solve(santa) {
    let f = 0;
    let r = santa.split('').map(rr => rr === '(' ? ++f : --f).indexOf(-1) + 1;
    return ["🎄", r]
}

console.table(solve(santa))
