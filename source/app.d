import algorithms;

import std.algorithm : map, min, minIndex;
import std.array : array;
import std.math : exp;
import std.range : iota;
import std.stdio : writeln, writefln;

alias fun = (x) => (1 - x) * (1 - x) + exp(x);

int main() {
    ISearcher searcher = new OptimalPassiveSearcher!fun;
    searcher.setInterval(-5, 2);
    searcher.search(0.1);

    writeln;

    searcher = new FibonacciSearcher!fun;
    searcher.setInterval(-5, 2);
    searcher.search(0.1);
    return 0;
}
