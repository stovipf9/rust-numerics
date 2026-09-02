# 参考文献

この本は証明を書かない。固有名詞の付いた結果——Wilkinson の成長因子、Butcher の障壁、
Dahlquist の第2障壁、Lax の同値定理、Koksma–Hlawka の不等式、Céa の補題——は、
主張と使い方だけを書いて出典を示す形にしている。**証明と詳細はここから辿る。**

章ごとに数点だけ挙げる。全部読む必要はない。

## 全体

- **Trefethen & Bau, _Numerical Linear Algebra_ (SIAM, 1997)** —
  40 の講義に分かれていて、1つが1晩で読める。数値線形代数はこれ1冊でよい。
  条件数・後退安定性・QR・SVD の扱いがこの本の[密行列の線形代数](ch02-linalg.md)の下敷きになっている
- **Higham, _Accuracy and Stability of Numerical Algorithms_ (SIAM, 2nd ed., 2002)** —
  丸め誤差解析の百科事典。補償付き総和の誤差限界、成長因子、
  「\\(O(nu)\\) は最悪評価で実測は \\(O(\sqrt n u)\\) 的」といった話の出典はほぼここにある
- **Golub & Van Loan, _Matrix Computations_ (JHU Press, 4th ed., 2013)** — 参照用
- **Nocedal & Wright, _Numerical Optimization_ (Springer, 2nd ed., 2006)** — [最適化](ch05-optim.md)の標準

## 浮動小数点と丸め

（[本文](ch00-float.md)）

- **Goldberg, "What Every Computer Scientist Should Know About Floating-Point
  Arithmetic," _ACM Computing Surveys_ 23(1), 1991** — 定番。無料で読める
- **Muller et al., _Handbook of Floating-Point Arithmetic_ (Birkhäuser, 2nd ed., 2018)** —
  IEEE 754 の細部、`total_cmp` が実装している totalOrder 述語の定義
- Higham（上記）第4章 "Summation"、§4.3 "Compensated Summation" —
  Kahan と Neumaier の誤差限界の導出（章番号は第2版のもの）
- **Demmel & Nguyen, "Parallel Reproducible Summation," _IEEE Trans. Computers_ 64(7), 2015** —
  順序に依存しない総和（ReproBLAS）。並列化と再現性の話の出典

## 根の探索

（[本文](ch01-roots.md)）

- **Brent, _Algorithms for Minimization without Derivatives_ (Prentice-Hall, 1973)** —
  Brent 法の原典。二分法と補間をどう混ぜるかの判断が読める
- **Ortega & Rheinboldt, _Iterative Solution of Nonlinear Equations in Several Variables_
  (Academic Press, 1970; SIAM 復刊 2000)** — 収束次数の定義（Q-収束と R-収束の区別）。
  二分法が Q-線形収束しないという話はここの用語による
- **Press, Teukolsky, Vetterling & Flannery, _Numerical Recipes_
  (Cambridge, 3rd ed., 2007) 第9章 "Root Finding and Nonlinear Sets of Equations"** —
  停止条件の実務

## 密行列の線形代数

（[本文](ch02-linalg.md)）

- **Trefethen & Bau（上記）** — この章の主要な下敷き。
  Part II（Lecture 6–11）が QR と最小二乗、Part III（Lecture 12–19）が条件数と安定性。
  最小二乗の摂動論まで含めるなら Lecture 6–11 と 18–19
- **Higham（上記）第20章 "The Least Squares Problem"、§20.1** — 最小二乗の摂動論。
  \\(\kappa/\cos\theta + \kappa^2\tan\theta\\) 型の限界は Wedin の定理（Theorem 20.1）。
  **章番号は第2版のもの**（第1版では第19章）
- Wilkinson, _The Algebraic Eigenvalue Problem_ (Oxford, 1965) — 後退安定性の枠組みの原典
- **Shewchuk, "An Introduction to the Conjugate Gradient Method Without the Agonizing Pain"
  (CMU, 1994)** — CG の \\(\sqrt\kappa\\) がどこから来るかを幾何的に説明する。無料

## 固有値問題

（[本文](ch02b-eigen.md)）

- Trefethen & Bau（上記）Part V（Lecture 24–31） — 固有値問題。
  べき乗法・逆べき乗法・Rayleigh 商反復が Lecture 27、QR 法が Lecture 28–29。
  この章の主要な下敷き。Lanczos はここではなく Part VI（Lecture 36）にある
- Parlett, _The Symmetric Eigenvalue Problem_ (Prentice-Hall, 1980; SIAM Classics 復刊 1998) —
  対称固有値問題の標準的な参照。Lanczos の直交性の喪失と再直交化
- Golub & Van Loan（上記） — 非対称の QR 法、Hessenberg 化、Golub–Kahan の二重対角化
- Wilkinson（上記、_The Algebraic Eigenvalue Problem_） —
  「特性多項式で解いてはいけない」の原典側。悪条件多項式の例もここ

## 補間と近似

（[本文](ch02c-interp.md)）

- Trefethen, _Approximation Theory and Approximation Practice_ (SIAM, 2013; 拡張版 2019) —
  多項式補間・Chebyshev 節点・barycentric 形式。Runge 現象がなぜ起きるかを正面から扱う。
  **この章に最も近い1冊**
- Berrut & Trefethen, "Barycentric Lagrange Interpolation," _SIAM Review_ 46(3), 2004 —
  「Lagrange 形式は遅くて不安定」という通念を覆した論文
- de Boor, _A Practical Guide to Splines_ (Springer, revised ed., 2001) —
  スプラインの標準的な参照。端点条件と not-a-knot
- Davis, _Interpolation and Approximation_ (Blaisdell, 1963; Dover 復刊 1975) — 古典的な参照

## 求積

（[本文](ch03-quad.md)）

- **Davis & Rabinowitz, _Methods of Numerical Integration_ (Academic Press, 2nd ed., 1984)** —
  求積の標準的な参照。Gauss 型の理論と Euler–Maclaurin
- **Trefethen, "Is Gauss Quadrature Better than Clenshaw–Curtis?" _SIAM Review_ 50(1), 2008** —
  \\(2n-1\\) 次まで厳密という優位が実際にはあまり効かない、という反対側の議論
- **Gander & Gautschi, "Adaptive Quadrature—Revisited," _BIT_ 40(1), 2000** —
  適応 Simpson の誤差推定と \\(1/15\\)、停止条件の落とし穴

## 常微分方程式

（[本文](ch04-ode.md)）

- **Hairer, Nørsett & Wanner, _Solving Ordinary Differential Equations I: Nonstiff Problems_
  (Springer, 2nd ed., 1993)** — Butcher の障壁、Dormand–Prince、刻み幅制御。この章の主要な出典
- **Hairer & Wanner, _Solving ODEs II: Stiff and Differential-Algebraic Problems_
  (Springer, 2nd ed., 1996)** — A-安定性、L-安定性、Dahlquist の障壁
- **Butcher, _Numerical Methods for Ordinary Differential Equations_ (Wiley, 3rd ed., 2016)** —
  段数と次数の関係の原典側

## 確率微分方程式

（[本文](ch04b-sde.md)）

- **Kloeden & Platen, _Numerical Solution of Stochastic Differential Equations_
  (Springer, 1992)** — 標準的な参照。強収束・弱収束の定義と次数、仮定（Lipschitz と線形増大）
- **Higham, D. J., "An Algorithmic Introduction to Numerical Simulation of Stochastic
  Differential Equations," _SIAM Review_ 43(3), 2001, pp. 525–546** — **最初に読むならこれ。**
  22ページで、線形 SDE（解が幾何ブラウン運動）での強収束・弱収束の実測手順が、
  MATLAB プログラム `emstrong.m` / `emweak.m` としてそのまま載っている
- Hutzenthaler, Jentzen & Kloeden, "Strong and weak divergence in finite time of Euler's
  method for stochastic differential equations with non-globally Lipschitz continuous
  coefficients," _Proc. R. Soc. A_ 467(2130), 2011, pp. 1563–1576 —
  仮定を外すと発散する、の出典

## 最適化

（[本文](ch05-optim.md)）

- **Nocedal & Wright（上記）** — 直線探索、Wolfe 条件、BFGS の正定値性、L-BFGS の two-loop
- **Boyd & Vandenberghe, _Convex Optimization_ (Cambridge, 2004)** —
  §9.3.1 で最急降下の収束率が**関数値について** \\(f(x^{(k)})-p^\* \le c^k(f(x^{(0)})-p^\*)\\)
  の形で導かれる（強凸性定数 \\(m, M\\) を使う形で、条件数の式とは見た目が違う）。無料
- **Luenberger & Ye, _Linear and Nonlinear Programming_ (Springer, 4th ed., 2016)** —
  最急降下の \\(((\kappa-1)/(\kappa+1))^2\\) を **Kantorovich 不等式**から導く典拠。
  本書の該当箇所の名前つきの結果はこちら
- Bottou, Curtis & Nocedal, "Optimization Methods for Large-Scale Machine Learning,"
  _SIAM Review_ 60(2), 2018, pp. 223–311 — 決定論的最適化と確率的最適化の断絶を正面から扱う

## 自動微分

（[本文](ch06-autodiff.md)）

- **Griewank & Walther, _Evaluating Derivatives_ (SIAM, 2nd ed., 2008)** —
  自動微分の標準的な参照。cheap gradient principle の定式化とコスト評価
- **Baur & Strassen, "The complexity of partial derivatives," _Theoretical Computer Science_
  22(3), 1983** — 全勾配が \\(f\\) の評価の定数倍で得られる、の原典
- Baydin, Pearlmutter, Radul & Siskind, "Automatic Differentiation in Machine Learning:
  a Survey," _JMLR_ 18(153), 2018, pp. 1–43 —
  前進・逆の対比と、記号微分・数値微分との違い。無料
- Griewank, "A Mathematical View of Automatic Differentiation," _Acta Numerica_ 12, 2003,
  pp. 321–398 — 非平滑点と分岐の扱い（**本文未確認**。書誌のみ照合）

## FFT と Monte Carlo

（[本文](ch07-fft-mc.md)）

- **Van Loan, _Computational Frameworks for the Fast Fourier Transform_ (SIAM, 1992)** —
  Cooley–Tukey を行列分解として書く。bit-reversal の構造が見通せる
- **Niederreiter, _Random Number Generation and Quasi-Monte Carlo Methods_ (SIAM, 1992)** —
  判別数（\\(D_N\\) と \\(D_N^\*\\) の区別）と Koksma–Hlawka の不等式の原典側
- **Caflisch, Morokoff & Owen, "Valuation of mortgage-backed securities using Brownian
  bridges to reduce effective dimension," _J. Computational Finance_ 1(1), 1997, pp. 27–46** —
  **実効次元の概念の出典。** \\(d=360\\) の問題で QMC が効く理由がここにある
- **Owen, _Monte Carlo theory, methods and examples_ (2013–, 執筆中の教科書)** —
  分散削減とランダム化 QMC。無料

## PDE の差分法

（[本文](ch08-pde.md)）

- **LeVeque, _Finite Difference Methods for Ordinary and Partial Differential Equations_
  (SIAM, 2007)** — von Neumann 解析、CFL、Lax の同値定理。この章の主要な出典
- **Strikwerda, _Finite Difference Schemes and Partial Differential Equations_
  (SIAM, 2nd ed., 2004)** — von Neumann 解析の仮定（周期境界）と、
  境界がある場合に何が変わるかを丁寧に扱う
- **Richtmyer & Morton, _Difference Methods for Initial-Value Problems_ (Wiley, 2nd ed., 1967)** —
  Lax の同値定理の原典側。安定性の定義がノルムに依存することが明示されている

## 有限要素法

（[本文](ch08b-fem.md)）

- **Brenner & Scott, _The Mathematical Theory of Finite Element Methods_
  (Springer, 3rd ed., 2008)** — Lax–Milgram、Céa の補題、補間誤差。誤差評価の骨格
- **Ern & Guermond, _Theory and Practice of Finite Elements_ (Springer, 2004)** — 同上、実装寄り
- **Larson & Bengzon, _The Finite Element Method: Theory, Implementation, and Applications_
  (Springer, 2013)** — 1次元から2次元三角形要素までの実装が具体的
- **Logg, Mardal & Wells (eds.), _Automated Solution of Differential Equations by the
  Finite Element Method_ (Springer, 2012)** — アセンブリの構造。無料

## Rust 側

- **_The Rust Programming Language_ (公式)** と **_The Rustonomicon_** —
  借用の分割（`split_at_mut`）と `unsafe` の境界
- **_Rust API Guidelines_** — 公開 API の慣用。[根の探索](ch01-roots.md)・[常微分方程式](ch04-ode.md)の「どう受け取るか」の判断材料
- **docs.rs の各クレート** — `ndarray` / `nalgebra` / `faer` / `argmin` / `ode_solvers` /
  `rustfft`。**この本で「API 設計を読む」と書いてある箇所はここを指す**
