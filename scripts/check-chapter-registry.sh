#!/bin/sh
# 章の一覧を持っている場所が、実在する章と食い違っていないかを見る。
# tests/book_consistency.rs から呼ばれる。単体でも走る。
set -u
cd "$(dirname "$0")/.." || exit 1

CHAPTERS="0 1 2 2b 2c 3 4 4b 5 6 7 8 8b"
REGISTRIES="book/src/README.md book/src/notation.md book/src/exercises.md book/src/references.md SYLLABUS.md"

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
    for n in $CHAPTERS; do
        # 「章N」の形か、README の依存表のように行頭の表セル「| N |」の形
        grep -qE "章${n}([^0-9bc]|\$)" "$reg" || grep -qE "^\| ${n} \|" "$reg" || miss="$miss $n"
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
