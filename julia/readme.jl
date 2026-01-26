#! /usr/bin/env julia

readme_lines = [
    "# Exercism Julia Track",
    "",
]

for exercise_dir in readdir(".")
    exercise_readme_md = joinpath(exercise_dir, "README.md")
    isfile(exercise_readme_md) || continue
    
    exercise_readme_lines = readlines(exercise_readme_md)
    title = lstrip(first(exercise_readme_lines), ['#', ' '])
    thumbnail = lowercase(replace(title, ' ' => '-'))
    url = "https://exercism.org/tracks/julia/exercises/$thumbnail"

    title_line = "## [$title]($url)  ([`$exercise_dir/`]($exercise_dir/))"
    thumbnail_line = "<img align=right width=100 alt='$title' src='https://assets.exercism.org/exercises/$thumbnail.svg'>"

    start_instr_idx = findfirst(x -> x == "## Instructions", exercise_readme_lines)
    start_instr_idx !== nothing || continue
    end_instr_idx = findnext(startswith("##"), exercise_readme_lines, start_instr_idx + 1)
    end_instr_idx !== nothing || continue

    append!(readme_lines, [title_line, "", thumbnail_line, ""])
    append!(readme_lines, exercise_readme_lines[start_instr_idx + 1:end_instr_idx - 1])
    push!(readme_lines, "")
end

open("README.md", "w") do readme_file
    for line in readme_lines
        println(readme_file, line)
    end
end
