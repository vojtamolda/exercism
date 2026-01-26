#!/usr/bin/env rustc

use std::fs;
use std::io::{self, Write};
use std::path::Path;


fn strip_title_line(line: &str) -> String {
    line.trim_start_matches(|c| c == '#' || c == ' ')
        .to_string()
}

fn thumbnail_from_title(title: &str) -> String {
    title.to_lowercase().replace(' ', "-")
}

fn find_line(lines: &[String], target: &str) -> Option<usize> {
    lines.iter().position(|x| x == target)
}

fn find_next_heading(lines: &[String], start_idx_inclusive: usize) -> Option<usize> {
    lines.iter()
        .enumerate()
        .skip(start_idx_inclusive)
        .find(|(_, s)| s.starts_with("##"))
        .map(|(i, _)| i)
}

fn main() -> io::Result<()> {
    let mut readme_lines: Vec<String> = vec![
        "# Exercism Rust Track".to_string(),
        "".to_string(),
    ];

    for entry in fs::read_dir(".")? {
        let entry = entry?;
        let exercise_dir_name = entry.file_name().to_string_lossy().to_string();
        let path = entry.path();

        if !path.is_dir() {
            continue;
        }

        let exercise_readme_md = path.join("README.md");
        if !exercise_readme_md.is_file() {
            continue;
        }

        let contents = fs::read_to_string(&exercise_readme_md)?;
        // Similar to Julia readlines(): keep non-newline text, drop trailing '\n'
        let exercise_readme_lines: Vec<String> = contents.lines().map(|s| s.to_string()).collect();
        if exercise_readme_lines.is_empty() {
            continue;
        }

        let title = strip_title_line(&exercise_readme_lines[0]);
        let thumbnail = thumbnail_from_title(&title);
        let url = format!(
            "https://exercism.org/tracks/julia/exercises/{}",
            thumbnail
        );

        let title_line = format!(
            "## [{}]({})  ([`{}/`]({}/))",
            title, url, exercise_dir_name, exercise_dir_name
        );
        let thumbnail_line = format!(
            "<img align=right width=100 alt='{}' src='https://assets.exercism.org/exercises/{}.svg'>",
            title, thumbnail
        );

        let start_instr_idx = match find_line(&exercise_readme_lines, "## Instructions") {
            Some(i) => i,
            None => continue,
        };

        let end_instr_idx = match find_next_heading(&exercise_readme_lines, start_instr_idx + 1) {
            Some(i) => i,
            None => continue,
        };

        readme_lines.push(title_line);
        readme_lines.push("".to_string());
        readme_lines.push(thumbnail_line);
        readme_lines.push("".to_string());

        for line in &exercise_readme_lines[(start_instr_idx + 1)..end_instr_idx] {
            readme_lines.push(line.clone());
        }
        readme_lines.push("".to_string());
    }

    let mut out = fs::File::create(Path::new("README.md"))?;
    for line in readme_lines {
        writeln!(out, "{}", line)?;
    }

    Ok(())
}
