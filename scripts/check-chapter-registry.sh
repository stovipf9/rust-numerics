#!/bin/sh
# 章の一覧を持っている場所が、実在する章と食い違っていないかを見る。
# tests/book_consistency.rs から呼ばれる。単体でも走る。
set -u
cd "$(dirname "$0")/.." || exit 1

REGISTRIES="book/src/README.md book/src/notation.md book/src/exercises.md book/src/references.md SYLLABUS.md"

# 章ファイル名から章番号を出す（ch02b-eigen.md → 2b）
chapter_number() {
    echo "$1" | sed 's/^ch//; s/-.*//; s/^0*\([0-9]\)/\1/'
}

# 章ファイル名から章題を出す（SUMMARY.md の表記が唯一の出どころ）
chapter_title() {
    sed -n "s/^- \[\(.*\)\]($1)\$/\1/p" book/src/SUMMARY.md
}

fail=0

echo "== 章ファイルと SUMMARY の対応 =="
for f in book/src/ch*.md; do
    grep -q "$(basename "$f")" book/src/SUMMARY.md || { echo "  NG $f が SUMMARY.md に無い"; fail=1; }
done
grep -o 'ch[0-9a-z-]*\.md' book/src/SUMMARY.md | while read -r m; do
    [ -f "book/src/$m" ] || { echo "  NG SUMMARY.md の $m が存在しない"; }
done

echo "== 各レジストリに全章が出てくるか =="
for reg in $REGISTRIES; do
    miss=""
    for f in book/src/ch*.md; do
        b=$(basename "$f")
        n=$(chapter_number "$b")
        t=$(chapter_title "$b")
        if [ -z "$t" ]; then
            echo "  NG $b の章題を SUMMARY.md から取れない"; fail=1; continue
        fi
        # 「章N」と書いてあるか、その章へのリンクがあるか、章題そのものがあるか
        grep -qE "章${n}([^0-9bc]|\$)" "$reg" || grep -qF "]($b)" "$reg" \
            || grep -qF "$t" "$reg" || miss="$miss $n"
    done
    if [ -n "$miss" ]; then
        echo "  NG $reg に無い章:$miss"
        fail=1
    else
        echo "  ok $reg"
    fi
done

echo "== コード片がコンパイルできない書き方をしていないか =="
bad=$(for f in book/src/*.md; do
    awk -v F="$f" '/^```rust/{i=1;next} /^```$/{i=0}
        i && /->/ && /\{ *\/\*.*\*\/ *\}/ {print F": "$0}
        i && /^[[:space:]]*(pub )?fn .*->.*;[[:space:]]*$/ && !intrait {print F": "$0}
        /^[[:space:]]*trait /{intrait=1} /^\}/{intrait=0}' "$f"
done)
if [ -n "$bad" ]; then echo "$bad" | sed 's/^/  NG /'; fail=1; else echo "  ok"; fi

echo "== SUMMARY のリンクが解決するか =="
grep -o '(\([a-zA-Z0-9._-]*\.md\))' book/src/SUMMARY.md | tr -d '()' | while read -r m; do
    [ -f "book/src/$m" ] || echo "  NG リンク切れ: $m"
done
echo "  （NG が無ければ解決）"

exit $fail
