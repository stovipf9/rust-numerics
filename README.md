# 数値解析を Rust で書く

自分で実装しながら進めるための、本と crate。

読むほう → <https://stovipf9.github.io/rust-numerics/>

数学の教科書でも言語の教科書でもなく、その接続を書いている——「この数学的事実が、
Rust のどの言語機構と噛み合うのか」。設計判断の結論・実装・テストは本に書かない。
そこが読み手の課題として残る。

## 構成

| | |
|---|---|
| `book/` | 本のソース（mdBook） |
| `src/` | crate 本体。実装が入る |
| `examples/` | 収束次数のプロット等（まだ無い） |
| [`SYLLABUS.md`](SYLLABUS.md) | 章立ての計画。各章の題材・完了条件・オラクル |

## 手元で動かす

```sh
cargo test          # 章と目次・記号表・演習の対応を検査する
mdbook serve book   # 本を読む
```

`mdbook` と `mdbook-mermaid` が要る（Arch では `extra/mdbook`、後者は
`cargo install mdbook-mermaid`）。数式は MathJax で描画するので、生の Markdown では
`\\[ \\]` が見えるが、ビルドすれば数式になる。
