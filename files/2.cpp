#include "testlib.h"
 
using namespace std;
 
int main(int argc, char* argv[])
{
    registerValidation(argc, argv);
 
    int n = inf.readInt(2, 1e5, "n");
    inf.readEoln();
    for (int i = 1; i < n; ++i) {
        int a_i = inf.readInt(0, 1e5, "a_i");
        inf.readSpace();
    }
    int a_n = inf.readInt(1e6, 1e6, "a_n");
    inf.readEoln();
    int q = inf.readInt(1, 1e5, "q");
    inf.readEoln();
    for (int j = 1; j <= q; ++j) {
        int v = inf.readInt(1, 2, "v");
        inf.readSpace();
        int i = inf.readInt(1, n - 1, "i");
        if (v == 2) {
            inf.readSpace();
            int x = inf.readInt(1, 1e5, "x");
        }
        inf.readEoln();
    }
    inf.readEof();
}