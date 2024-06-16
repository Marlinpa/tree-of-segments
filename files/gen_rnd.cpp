#include <bits/stdc++.h>
#include "testlib.h"
using namespace std;

const int MAX = 1e5;
const int a_n = 1e6;

int main(int argc, char* argv[]) {
    registerGen(argc, argv, 1);
    int n = static_cast<int>(strtol(argv[1], nullptr, 10));
    int q = static_cast<int>(strtol(argv[2], nullptr, 10));
    cout << n << "\n";
    for (int i = 1; i < n; ++i) {
        cout << rnd.next(1, MAX) << " ";
    }
    cout << a_n << "\n" << q << "\n";
    for (int i = 1; i <= q; ++i) {
        int v = rnd.next(1, 2);
        cout << v << " ";
        cout << rnd.next(1, n - 1);
        if (v == 2) {
            cout << " " << rnd.next(1, MAX);
        }
        cout << "\n";
    }
}