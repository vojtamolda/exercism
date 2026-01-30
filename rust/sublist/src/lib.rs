#[derive(Debug, PartialEq, Eq)]
pub enum Comparison {
    Equal,
    Sublist,
    Superlist,
    Unequal,
}

pub fn sublist(first_list: &[i32], second_list: &[i32]) -> Comparison {
    let first_sublist_of_second = is_sublist(first_list, second_list);
    let second_sublist_of_first = is_sublist(second_list, first_list);

    if first_sublist_of_second && second_sublist_of_first {
        return Comparison::Equal;
    }
    if first_sublist_of_second {
        return Comparison::Superlist;
    }
    if second_sublist_of_first {
        return Comparison::Sublist;
    }
    Comparison::Unequal
}

fn is_sublist(first_list: &[i32], second_list: &[i32]) -> bool {
    if second_list.is_empty() { return true }
    first_list.windows(second_list.len()).any(|window| window == second_list)
}
