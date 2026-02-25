.data |= (
    if .user_equip
    then del(.common_equip)
    else . +
        {
            "user_equip": {
                "package_url": "https://i0.hdslb.com/bfs/garb/zip/61df158ae4ff138f05f4a7f1f645c69bccd1802e.zip",
                "id": 1686738549001,
                "preview": "https://i0.hdslb.com/bfs/garb/e76d23ac0ae142a2f108254e98b8c9eeea23ec82.jpg",
                "data": {
                "tail_icon_ani": false,
                "color_mode": "light",
                "color": "#000000",
                "color_second_page": "#FFFFFF",
                "side_bg_color": "",
                "tail_icon_mode": "img",
                "tail_color": "#0D0D0D",
                "head_myself_mp4_play": "loop",
                "tail_color_selected": "#D8648A",
                "tail_icon_ani_mode": ""
                },
                "ver": 1686814802,
                "package_md5": "5d59bfc325724cee73bf6bc560446119",
                "name": "病名为爱"
            },
            "skin_colors": [
                {"id": 8, "name": "简洁白", "is_free": true, "color_name": "white"},
                {"id": 2, "name": "少女粉", "is_free": true, "color_name": "pink" },
                {"id": 1, "name": "主题黑", "is_free": true, "color_name": "black"}
            ]
        }
    end
)