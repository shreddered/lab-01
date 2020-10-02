import std.algorithm : map, min, minIndex;
import std.array : array;
import std.math : exp;
import std.range : iota;
import std.stdio : writeln, writefln;

alias fun = (x) => (1 - x) * (1 - x) + exp(x);

int main() {
    // optimalPassiveSearch!fun(-5, 2);
    auto searcher = new OptimalPassiveSearcher!fun;
    searcher.setInterval(-5, 2);
    searcher.search;
    return 0;
}
