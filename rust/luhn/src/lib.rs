
/// Checks if a Luhn checksum is valid.
pub fn is_valid(code: &str) -> bool {
    let mut digits = Vec::new();

    for ch in code.chars() {
        if ch.is_whitespace() {
            continue;
        }
        if let Some(digit) = ch.to_digit(10) {
            digits.push(digit);
        } else {
            return false;
        }
    }

    if digits.len() <= 1 {
        return false;
    }

    let sum: u32 = digits
        .iter()
        .rev()
        .enumerate()
        .map(|(i, &d)| {
            if i % 2 == 1 {
                let mut x = d * 2;
                if x > 9 {
                    x -= 9;
                }
                x
            } else {
                d
            }
        })
        .sum();

    sum % 10 == 0
}
