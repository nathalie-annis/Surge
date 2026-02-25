.data.modules |= (
    map(
        if .type | IN("BANNER", "TIP") then
            empty
        else
            walk(
                if type == "object" and (.badge_info | has("img")) then
                    .badge_info.img = ""
                else .
                end
            )
        end
    ) |
    sort_by(
        {
            "FUNCTION_TEXT": 0, 
            "FOLLOW_C": 1, 
            "FOLLOW_V": 1, 
            "RANK": 2,
            "CARD_V": 3,
            "COMMON_PLAYLIST": 4
        }[.type] // 114514
    )
)