#include <bits/stdc++.h>

using namespace std;

const int MAX = 1e6;

void merge(multiset<int> &a, multiset<int> &b, multiset<int> &c) {
    for (auto i : a) c.insert(i);
    for (auto i : b) c.insert(i);
}

void build(vector<multiset<int>> &tree, vector<int> &numbers, int v, int vl, int vr) {
    if (vl + 1 == vr) {
        tree[v] = {numbers[vl]};
        return;
    }
    int vm = (vl + vr) / 2;
    build(tree, numbers, 2 * v, vl, vm);
    build(tree, numbers, 2 * v + 1, vm, vr);
    merge(tree[2 * v], tree[2 * v + 1], tree[v]);
}

void change(vector<multiset<int>> &tree, int v, int vl, int vr, int ind, int old, int x) {
    if (vl > ind || vr <= ind) {
        return;
    }
    tree[v].erase(tree[v].find(old));
    tree[v].insert(x);
    if (vl + 1 == vr) {
        return;
    }
    int vm = (vl + vr) / 2;
    change(tree, 2 * v, vl, vm, ind, old, x);
    change(tree, 2 * v + 1, vm, vr, ind, old, x);
}

int get(vector<multiset<int>> &tree, int v, int vl, int vr, int l, int r, int val) {
    if (vl >= r || vr <= l) {
        return MAX;
    }
    if (l <= vl && vr <= r) {
        if (*tree[v].begin() > val) {
            return *tree[v].begin();
        } else return MAX;
    }
    int vm = (vl + vr) / 2;
    int a = get(tree, 2 * v, vl, vm, l, r, val);
    int b = get(tree, 2 * v + 1, vm, vr, l, r, val);
    return min(a, b);
}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    cout.tie(nullptr);
    int n, q;
    cin >> n;
    vector<int> numbers(n + 1);
    for (int i = 1; i <= n; ++i) cin >> numbers[i];
    vector<multiset<int>> tree(4 * n + 10);
    build(tree, numbers, 1, 1, n + 1);
    cin >> q;
    while (q--) {
        int com, i, x;
        cin >> com >> i;
        if (com == 2) {
            cin >> x;
            change(tree, 1, 1, n + 1, i, numbers[i], x);
            numbers[i] = x;
        } else {
            int ans = get(tree, 1, 1, n + 1, i + 1, n + 1, numbers[i]);
            cout << ans << "\n";
        }
    }
}