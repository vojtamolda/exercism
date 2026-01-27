use std::collections::{HashMap, HashSet};


pub fn anagrams_for<'a>(word: &str, possible_anagrams: &[&'a str]) -> HashSet<&'a str> {
    let mut word_charcounts = HashMap::new();
    for c in word.to_lowercase().chars() {
        *word_charcounts.entry(c).or_insert(0) += 1;
    }

    let mut word_anagrams = HashSet::new();
    for possible_anagram in possible_anagrams {
        if word.len() != possible_anagram.len() {
            continue;
        }
        if word.to_lowercase() == possible_anagram.to_lowercase() {
            continue;
        }

        let mut possible_anagram_charcounts = HashMap::new();
        for c in possible_anagram.to_lowercase().chars() {
            *possible_anagram_charcounts.entry(c).or_insert(0) += 1;
        }

        if word_charcounts == possible_anagram_charcounts {
            word_anagrams.insert(*possible_anagram);
        }
    }

    word_anagrams
}
