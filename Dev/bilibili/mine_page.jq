.data |= (
    del(.live_tip) |
    .sections_v2 |= map(
        if .title == "创作中心"
        then .items |= (
            if any(.title == "数据中心")
            then .
            else . + [
                {
                    "need_login": 1,
                    "corner_pixel": 0,
                    "display": 1,
                    "id": 533,
                    "biz_type": 0,
                    "title": "数据中心",
                    "global_red_dot": 0,
                    "uri": "https://member.bilibili.com/york/data-center?navhide=1&from=profile",
                    "icon": "http://i0.hdslb.com/bfs/feed-admin/367204ba56004b1a78211ba27eefbf5b4cc53a35.png"
                }
            ]
            end |
            [("创作中心","数据中心","主播中心","直播数据") as $order | .[] | select(.title == $order)]
        )
        elif .title == "我的服务"
        then .items |= (
            if any(.title == "我的直播")
            then .
            else . + [
                {
                    "corner_pixel": 0,
                    "id": 406,
                    "biz_type": 0,
                    "title": "我的直播",
                    "common_op_item": {},
                    "uri": "bilibili://user_center/live_center",
                    "icon": "http://i0.hdslb.com/bfs/archive/1db5791746a0112890b77a0236baf263d71ecb27.png"
                }
            ]
            end |
            [("个性装扮","会员购","我的钱包","我的直播") as $order | .[] | select(.title == $order) | if .title == "会员购" then .uri = "bilibili://mall/home" else . end]
        )
        elif .title == "更多服务"
        then .items |= map(select(.title | IN("联系客服","设置")))
        else .
        end
    ) |
    .follower |= if "{{{界面伪装}}}" == "#" then . else "{{{-  粉丝数}}}" end |
    .senior_gate = {
        "member_text":"硬核会员",
        "identity":2,
        "birthday_conf":null,
        "bubble":""
    } |
    .modular_vip_section |= (
        .title += {
            "url": "https://www.bilibili.com/blackboard/era/kXP06cmqKtYULNL1.html?",
            "text": "𝓒𝓲𝓪𝓵𝓵𝓸～(∠・ω< )⌒★"
        } |
        .subtitle.text = "每天都要开心呀" |
        .button.text = "会员中心"
    )
)