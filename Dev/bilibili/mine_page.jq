.data |= (
    del(.live_tip) |
    .sections_v2 |= map(
        if .title == "创作中心"
        then .items |= map(select(.title | IN("创作中心","稿件管理","主播中心","直播数据")))
        elif .title == "我的服务"
        then .items |= map(
            if .title == "会员购"
            then .uri = "bilibili://mall/home"
            elif .title | IN("我的课程","个性装扮","我的钱包")
            then .
            else empty
            end
        )
        elif .title == "更多服务"
        then .items |= map(select(.title | IN("联系客服","设置")))
        else .
        end
    ) |
    .follower |= if "{{{界面伪装}}}" == "#" then . else "{{{-  粉丝数}}}" end
    end |
    .senior_gate = {
        "member_text":"硬核会员",
        "identity":2,
        "birthday_conf":null,
        "bubble":""
    } |
    .modular_vip_section |= (
        .title += {
            "url": "https://www.bilibili.com/blackboard/era/kXP06cmqKtYULNL1.html?",
            "text": "Ciallo～(∠・ω< )⌒★"
        } |
        .subtitle.text = "每天都要开心呀" |
        .button.text = "会员中心"
    )
)