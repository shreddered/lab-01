import std.algorithm : map, min, minIndex;
import std.array : array;
import std.math : exp;
import std.range : iota;
import std.stdio : writeln, writefln;

alias fun = (x) => (1 - x) * (1 - x) + exp(x);


void optimalPassiveSearch(alias fn)(double a, double b, const double eps = 0.1) {
    // table header
    writefln("|%5c|%20c|", 'n', 'x');
    writeln("|-----|--------------------|");

    // main cycle
    for (long n = 1; (b - a)/(n + 1) >= eps; ++n) {
        double[] x = iota(1, n + 1)
            .map!(k => (b - a)/(n + 1) * k + a)
            .array;
        long index = x.map!fn
            .minIndex; 
        writefln("|%5d|%10f+-%5f|", n, x[index], (b - a)/(n + 1));
        ++n;
    }
}

int main() {
    optimalPassiveSearch!fun(-5, 2);
    return 0;
}
