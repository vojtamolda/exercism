/// Annotate each square of the given garden with the number of flowers that
/// surround said square (blank if there are no surrounding flowers).
pub fn annotate(garden: &[&str]) -> Vec<String> {
    let mut annotated_garden = Vec::with_capacity(garden.len());

    for (r, row) in garden.iter().enumerate() {
        let mut annotated_row = String::with_capacity(row.len());
        for (c, cell) in row.as_bytes().iter().enumerate() {
            if *cell == b'*' {
                annotated_row.push('*');
                continue;
            }

            let mut flower_count = 0;
            for ir in (-1 as isize)..=(1 as isize) {
                for ic in (-1 as isize)..=(1 as isize) {
                    if ir == 0 && ic == 0 { continue }

                    if let Ok(r) = usize::try_from(r as isize + ir) {
                        if let Ok(c) = usize::try_from(c as isize + ic) {
                            if let Some(neitghbor_row) = garden.get(r) {
                                if let Some(neighbor_cell) = neitghbor_row.as_bytes().get(c) {                            
                                    if *neighbor_cell == b'*' { flower_count += 1; }
                                }
                            }
                        }
                    }
                }
            }
            if flower_count > 0 {
                annotated_row.push(flower_count.to_string().chars().next().unwrap());
            } else {
                annotated_row.push(' ');
            }
        }
        annotated_garden.push(annotated_row);
    }

    annotated_garden
}
