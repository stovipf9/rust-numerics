# 記号表

章をまたぐと同じ文字が別の意味になる。実際に衝突しているものを先に挙げる。

## 衝突している記号

1行に1つの意味を書く。**同じ記号が複数行に出ているのが衝突である。**
出るところが1つに定まらないものは章題を並べた。

| 記号 | 意味 | 出るところ |
|---|---|---|
| \\(u\\) | **単位丸め** \\(2^{-53}\\) | [浮動小数点と丸め](ch00-float.md)で導入。[根の探索](ch01-roots.md)・[密行列の線形代数](ch02-linalg.md)・[求積](ch03-quad.md)・[常微分方程式](ch04-ode.md)・[自動微分](ch06-autodiff.md)の誤差評価 |
| \\(u\\) | **PDE の解** \\(u(x,t)\\) | [PDE の差分法](ch08-pde.md)・[有限要素法](ch08b-fem.md)の全体 |
| \\(\varepsilon\\) | 機械イプシロン \\(2^{-52}\\) | [浮動小数点と丸め](ch00-float.md) |
| \\(\varepsilon\\) | 停止許容 | [根の探索](ch01-roots.md) |
| \\(\varepsilon\\) | 推定誤差 | [常微分方程式](ch04-ode.md) |
| \\(\varepsilon\\) | dual number の生成元 \\(\varepsilon^2=0\\) | [自動微分](ch06-autodiff.md) |
| \\(h\\) | 刻み幅 | [求積](ch03-quad.md)・[常微分方程式](ch04-ode.md)・[自動微分](ch06-autodiff.md) |
| \\(h\\) | メッシュ幅 | [有限要素法](ch08b-fem.md)（[PDE の差分法](ch08-pde.md)では \\(\Delta x\\) と書く） |
| \\(p\\) | 収束次数 | [根の探索](ch01-roots.md)・[求積](ch03-quad.md)・[常微分方程式](ch04-ode.md)・[FFT と Monte Carlo](ch07-fft-mc.md) |
| \\(p\\) | 置換ベクトル | [密行列の線形代数](ch02-linalg.md) |
| \\(p\\) | 確率密度（重点サンプリング） | [FFT と Monte Carlo](ch07-fft-mc.md) |
| \\(p\\) | 補間多項式 \\(p(x)\\) | [補間と近似](ch02c-interp.md) |
| \\(N\\) | **FFT の長さ** | [FFT と Monte Carlo](ch07-fft-mc.md) |
| \\(N\\) | **MC のサンプル数** | [FFT と Monte Carlo](ch07-fft-mc.md)（**同じ章の中で二重定義**） |
| \\(N\\) | 格子分割数 | [PDE の差分法](ch08-pde.md) |
| \\(N\\) | 分割行列 \\(A=M-N\\) | [密行列の線形代数](ch02-linalg.md) |
| \\(M\\) | 反復法の分割行列 | [密行列の線形代数](ch02-linalg.md)が初出 |
| \\(M\\) | MC の試行数 | [確率微分方程式](ch04b-sde.md) |
| \\(M\\) | **質量行列** | [有限要素法](ch08b-fem.md) |
| \\(A\\) | 係数行列 | [密行列の線形代数](ch02-linalg.md) |
| \\(A\\) | 剛性行列（正定値） | [有限要素法](ch08b-fem.md) |
| \\(A\\) | 線の方法の \\(d\mathbf{u}/dt = A\mathbf{u}\\) の \\(A\\)（**負定値**） | [PDE の差分法](ch08-pde.md) |
| \\(\sigma\\) | 特異値 | [密行列の線形代数](ch02-linalg.md) |
| \\(\sigma\\) | 逆べき乗法のシフト | [固有値問題](ch02b-eigen.md) |
| \\(\sigma\\) | ボラティリティ | [確率微分方程式](ch04b-sde.md) |
| \\(\sigma\\) | MC の標準偏差 \\(\sigma(f)\\) | [FFT と Monte Carlo](ch07-fft-mc.md) |
| \\(\lambda\\) | 行列の固有値 | [固有値問題](ch02b-eigen.md) |
| \\(\lambda\\) | 試験方程式の固有値 | [常微分方程式](ch04-ode.md) |
| \\(\lambda\\) | \\(H+\lambda I\\) の修正パラメータ | [最適化](ch05-optim.md) |
| \\(\lambda\\) | 離散 Laplacian の固有値 | [PDE の差分法](ch08-pde.md) |
| \\(\alpha\\) | 熱拡散率 | [PDE の差分法](ch08-pde.md) |
| \\(\alpha\\) | 直線探索のステップ長 | [最適化](ch05-optim.md) |
| \\(W\\) | 回転因子 \\(W_N\\) | [FFT と Monte Carlo](ch07-fft-mc.md) |
| \\(W\\) | Brown 運動 \\(W_t\\) | [確率微分方程式](ch04b-sde.md)（[FFT と Monte Carlo](ch07-fft-mc.md)に依存するので同時に生きる） |
| \\(g\\) | 不動点写像 | [根の探索](ch01-roots.md) |
| \\(g\\) | 増幅率 | [PDE の差分法](ch08-pde.md) |
| \\(g\\) | 弱収束の被検関数 | [確率微分方程式](ch04b-sde.md) |
| \\(r\\) | 残差 | [密行列の線形代数](ch02-linalg.md) |
| \\(r\\) | 多項式の剰余 | [求積](ch03-quad.md) |
| \\(r\\) | \\(\alpha\Delta t/\Delta x^2\\)（熱方程式） | [PDE の差分法](ch08-pde.md) |
| \\(b\\) | 二次方程式の係数 | [浮動小数点と丸め](ch00-float.md) |
| \\(b\\) | 区間の右端 | [根の探索](ch01-roots.md)・[求積](ch03-quad.md) |
| \\(b\\) | 右辺ベクトル | [密行列の線形代数](ch02-linalg.md)・[有限要素法](ch08b-fem.md) |
| \\(b\\) | SDE の拡散係数 | [確率微分方程式](ch04b-sde.md) |
| \\(s\\) | 符号ビット | [浮動小数点と丸め](ch00-float.md) |
| \\(s\\) | Kahan の和 | [浮動小数点と丸め](ch00-float.md)（**同じ章の中で二重定義**） |
| \\(s\\) | BFGS のステップ \\(s_k\\) | [最適化](ch05-optim.md) |
| \\(E\\) | 誤差 | [求積](ch03-quad.md)・[自動微分](ch06-autodiff.md) |
| \\(E\\) | FFT の偶数部 \\(E_k\\) | [FFT と Monte Carlo](ch07-fft-mc.md) |

**\\(u\\) と \\(N\\) の衝突が最も痛い。** \\(u\\) は[浮動小数点と丸め](ch00-float.md)が「以下ずっと効く」と宣言した記号だが、
[PDE の差分法](ch08-pde.md)と[有限要素法](ch08b-fem.md)では PDE の解である（ただし両章は丸め誤差の定量評価を扱わないので、
実際には衝突が顕在化しない）。\\(N\\) は、**[FFT と Monte Carlo](ch07-fft-mc.md)の中で FFT の長さと MC のサンプル数の両方**に使われ、
演習でも両方が出る。

\\(A\\) の符号にも注意する。[PDE の差分法](ch08-pde.md)の線の方法の \\(A\\) は熱方程式の離散 Laplacian で
固有値が負、[有限要素法](ch08b-fem.md)の剛性行列は同じ演算子の符号を反転した形（弱形式で \\(-u''\\) を扱う）で正定値。
同じ物理の同じ離散化だが符号が逆である。

## その他の記号

| 記号 | 意味 | 初出 |
|---|---|---|
| \\(\mathrm{fl}(x)\\) | \\(x\\) を丸めた `f64` の値 | [浮動小数点と丸め](ch00-float.md) |
| \\(e_n\\) | 誤差 \\(x_n - x^\*\\) | [根の探索](ch01-roots.md) |
| \\(x^\*\\) | 真の根・真の最適点 | [根の探索](ch01-roots.md) |
| \\(\kappa(A)\\) | 条件数（誘導ノルム）。\\(\kappa_2\\) は2-ノルム | [密行列の線形代数](ch02-linalg.md) |
| \\(\\|e\\|_A\\) | \\(A\\)-ノルム \\(\sqrt{e^\top Ae}\\) | [密行列の線形代数](ch02-linalg.md) |
| \\(\hat x\\) | 計算された（丸めを含む）値 | [密行列の線形代数](ch02-linalg.md) |
| \\(R(z)\\) | 安定性関数 | [常微分方程式](ch04-ode.md) |
| \\(\gamma, \beta\\) | SDE の強次数・弱次数 | [確率微分方程式](ch04b-sde.md) |
| \\(\Delta W\\) | Brown 運動の増分 | [確率微分方程式](ch04b-sde.md) |
| \\(\bar v\\) | 逆モード自動微分の随伴 \\(\partial y/\partial v\\) | [自動微分](ch06-autodiff.md) |
| \\(W_N\\) | 回転因子 \\(e^{-2\pi i/N}\\) | [FFT と Monte Carlo](ch07-fft-mc.md) |
| \\(D_N^\*\\) | 星型判別数 | [FFT と Monte Carlo](ch07-fft-mc.md) |
| \\(V(f)\\) | Hardy–Krause の意味の変動 | [FFT と Monte Carlo](ch07-fft-mc.md) |
| \\(\nu\\) | Courant 数 \\(c\Delta t/\Delta x\\) | [PDE の差分法](ch08-pde.md) |
| \\(\ell_i\\) | Lagrange 基底 | [補間と近似](ch02c-interp.md) |
| \\(f[x_i,\ldots]\\) | 差分商 | [補間と近似](ch02c-interp.md) |
| \\(\phi_i\\) | 基底関数（帽子関数） | [有限要素法](ch08b-fem.md) |
| \\(H^1, L^2, H^2\\) | Sobolev 空間 / 2乗可積分関数の空間 | [有限要素法](ch08b-fem.md) |
| \\(l^2\\) | 数列の2乗和ノルム（Lax の定理で使う） | [PDE の差分法](ch08-pde.md) |
| \\(\|\Omega\|\\) | 領域の測度 | [有限要素法](ch08b-fem.md) |

## 「安定」という語は場所ごとに別の意味になる

混同しやすいのでここに並べる。

| 呼び名 | 何を問うか | 章 |
|---|---|---|
| 安定な式 | 桁落ちしない計算式か（二次方程式の根の公式など） | [浮動小数点と丸め](ch00-float.md) |
| 後退安定性 | 計算した解は、どれくらい摂動した問題の厳密解か | [密行列の線形代数](ch02-linalg.md) |
| Cholesky の「正定値性が安定性を保証する」 | ピボットなしで進めるか | [密行列の線形代数](ch02-linalg.md) |
| 絶対安定領域 | \\(\|R(z)\|\le1\\) となる \\(z\\) の集合。手法ごとに決まる | [常微分方程式](ch04-ode.md) |
| A-安定性 | その領域が左半平面全体を含むという性質 | [常微分方程式](ch04-ode.md) |
| L-安定性 | A-安定かつ \\(z\to-\infty\\) で \\(R\to0\\)（A-安定より強い） | [常微分方程式](ch04-ode.md) |
| von Neumann 安定性 | Fourier モードの増幅率が 1 以下か | [PDE の差分法](ch08-pde.md) |
| Lax の意味の安定性 | 差分作用素のべきが一様有界か（\\(l^2\\) で von Neumann と一致） | [PDE の差分法](ch08-pde.md) |

**絶対安定領域と A-安定性を1語にまとめないこと。** [PDE の差分法](ch08-pde.md)で見るとおり、
陽的 Euler は絶対安定領域を持つが A-安定ではない。両者を同一視すると
「von Neumann 解析と A-安定性は同じもの」という誤りに直結する。
