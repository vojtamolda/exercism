function allergic_to(score, allergen)
    return allergen in allergy_list(score)
end

function allergy_list(score)
    allergens = [
        (1 << 0, "eggs"),
        (1 << 1, "peanuts"),
        (1 << 2, "shellfish"),
        (1 << 3, "strawberries"),
        (1 << 4, "tomatoes"),
        (1 << 5, "chocolate"),
        (1 << 6, "pollen"),
        (1 << 7, "cats"),
    ]

    return Set(algn for (val, algn) in allergens if (score & val) != 0)
end
