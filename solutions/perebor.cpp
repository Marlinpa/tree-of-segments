#include <bits/stdc++.h>

using namespace std;

const int MAX = 1e6;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    cout.tie(nullptr);
    int n;
    cin >> n;
    vector<int> a(n + 1);
    for (int i = 1; i <= n; ++i) cin >> a[i];
    int q;
    cin >> q;
    while (q--) {
        int v, i, x;
        cin >> v;
        if (v == 2) {
            cin >> i >> x;
            a[i] = x;
        } else {
            cin >> i;
            int ans = MAX;
            for (int j = i + 1; j <= n; ++j) {
                if (a[j] > a[i]) ans = min(ans, a[j]);
            }
            cout << ans << "\n";
        }
    }
}