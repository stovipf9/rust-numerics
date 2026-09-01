//! 本（`book/`）の整合検査を `cargo test` に載せる。
//!
//! 章を足す・削る・番号を変えたときに、章の一覧を持っている場所
//! （SUMMARY・README の依存表・記号表・演習・参考文献・SYLLABUS）が
//! 置き去りになるのを止めるためのもの。検査の中身は
//! `scripts/check-chapter-registry.sh` にある。

use std::process::Command;

#[test]
fn 章の一覧を持つ場所が実在する章と一致する() {
    let root = env!("CARGO_MANIFEST_DIR");
    let out = Command::new("sh")
        .arg("scripts/check-chapter-registry.sh")
        .current_dir(root)
        .output()
        .expect("scripts/check-chapter-registry.sh を実行できない");

    if !out.status.success() {
        panic!(
            "本の整合検査に失敗した。\n\n--- stdout ---\n{}\n--- stderr ---\n{}",
            String::from_utf8_lossy(&out.stdout),
            String::from_utf8_lossy(&out.stderr),
        );
    }
}
