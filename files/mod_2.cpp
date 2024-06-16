#include <bits/stdc++.h>
#include "testlib.h"
using namespace std;

const int MAX = 1e5;
const int a_n = 1e6;

int main(int argc, char* argv[]) {
    registerGen(argc, argv, 1);
    int n = static_cast<int>(strtol(argv[1], nullptr, 10));
    int q = static_cast<int>(strtol(argv[2], nullptr, 10));
    int mod = static_cast<int>(strtol(argv[3], nullptr, 10));
    assert(mod <= q);
    cout << n << "\n";
    for (int i = 1; i < n; ++i) {
        cout << 2 << " ";
    }
    vector<vector<int>> t;
    cout << a_n << "\n" << q << "\n";
    for (int i = 1; i <= mod; ++i) {
        int j = rnd.next(1, n - 1);
        t.push_back({1, j});
    }
    for (int i = mod + 1; i <= q; ++i) {
        int j = rnd.next(1, n - 1);
        int x = rnd.next(1, MAX);
        t.push_back({2, j, x});
    }
    shuffle(t.begin(), t.end());
    for (const auto& i : t) {
        for (int j = 0; j < i.size(); ++j) {
            cout << i[j];
            if (j != i.size() - 1) cout << " ";
        }
        cout << "\n";
    }
}
