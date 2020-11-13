local W = unpack(select(2, ...))

W.Changelog[209] = {
    RELEASE_DATE = "TBD",
    IMPORTANT = {
        ["zhCN"] = {
            "由于 ElvUI-单位框体 已更新相同功能, 移除 [单位框体-施法条] 模块."
        },
        ["zhTW"] = {
            "由于 ElvUI-單位框架 已更新相同功能, 移除 [單位框架-施法條] 模組."
        },
        ["enUS"] = {
            "Because ElvUI unitframes added new font setting, [Unitframes-Cast Bar] module has been removed."
        },
        ["koKR"] = {
            "ElvUI 유닛프레임에 새로운 글꼴 설정이 추가되었기 때문에 [유닛프레임 - 시전 바] 모듈이 제거되었습니다."
        }
    },
    NEW = {
        ["zhCN"] = {
            "[美化皮肤] 添加了 Premade Groups Filter 的美化.",
            "[美化皮肤] 添加了 REHack 的美化."
        },
        ["zhTW"] = {
            "[美化皮膚] 新增了 Premade Groups Filter 的美化.",
            "[美化皮膚] 新增了 REHack 的美化."
        },
        ["enUS"] = {
            "[Skins] Add new skin for Premade Groups Filter.",
            "[Skins] Add new skin for REHack."
        },
        ["koKR"] = {
            "[스킨] Premade Groups Filter 애드온 스킨 추가.",
            "[스킨] REHack 애드온 스킨 추가."
        }
    },
    IMPROVEMENT = {
        ["zhCN"] = {
            "清理代码.",
            "重置模块工具更新.",
            "兼容性检查工具更新.",
            "[预组列表] 修复了图标背景无法正确隐藏的问题.",
            "[预组列表] 对于团队副本队伍, 自定义队伍也会进行美化了.",
            "[美化皮肤] 优化了网易集合石的美化.",
            "[美化皮肤] 优化了 WeakAuras 设定的美化.",
            "[美化皮肤] 优化了任务追踪的美化.",
            "[美化皮肤] 优化了弹出窗口的美化.",
            "[美化皮肤] 优化了 ElvUI 施法条的美化.",
            "[通告] 回调队伍判定.",
            "[装备观察] 人物头像添加背景.",
            "[小地图按钮] 除外 Narcissus 小地图图标. 感谢 @ryanfys",
            "[小地图按钮] 添加对 BagSync 的支持. 感谢 @ryanfys",
            "[小地图按钮] 添加对 Guild Roster Manager 的支持.",
            "[小地图按钮] 添加高亮边框.",
            "[小地图按钮] 更加自然的鼠标显隐动画."
        },
        ["zhTW"] = {
            "清理代碼.",
            "重置模組工具更新",
            "相容性確認工具更新.",
            "[預組列表] 修復了圖示背景無法正確隱藏的問題.",
            "[預組列表] 对于团队副本队伍, 自定义队伍也会进行美化了.",
            "[美化皮膚] 優化網易集合石美化.",
            "[美化皮膚] 優化 WeakAuras 設定美化.",
            "[美化皮膚] 優化任務追蹤美化.",
            "[美化皮膚] 優化彈出窗口美化.",
            "[美化皮膚] 優化 ElvUI 施法條美化.",
            "[通告] 回調隊伍判定.",
            "[裝備觀察] 人物頭像添加背景.",
            "[小地圖按鍵] 除外 Narcissus 小地圖圖示. 感謝 @ryanfys",
            "[小地圖按鍵] 新增對 BagSync 的支持. 感謝 @ryanfys",
            "[小地圖按鍵] 新增對 Guild Roster Manager 的支持.",
            "[小地圖按鍵] 新增高亮邊框.",
            "[小地圖按鍵] 更加自然的滑过显示动画."
        },
        ["enUS"] = {
            "Cleanup codes.",
            "Update module reseting buttons.",
            "Update compatibility check.",
            "[LFG List] Fix the bug that the backdrop of the icon cannot be hidden properly.",
            "[LFG List] Icon reskin now also works on Raid group and custom group.",
            "[Skins] Optimize NetEase Meeting Stone skin.",
            "[Skins] Optimize WeakAura Options skin.",
            "[Skins] Optimize Objective Tracker skin.",
            "[Skins] Optimize static popups skin.",
            "[Skins] Optimize ElvUI castbar skin.",
            "[Announcement] Roll back the status detection of party.",
            "[Inspect] Add a background to portrait.",
            "[Minimap Buttons] Exclude Narcissus minimap icon. Thanks @ryanfys",
            "[Minimap Buttons] Add support of BagSync. Thanks @ryanfys",
            "[Minimap Buttons] Add support of Guild Roster Manager.",
            "[Minimap Buttons] Add highlight border.",
            "[Minimap Buttons] Better animation for showing on mouseover."
        },
        ["koKR"] = {
            "코드 정리.",
            "모듈 리셋 항목 업데이트.",
            "호환성 검사 업데이트.",
            "[파티 찾기 목록] 아이콘 배경이 제대로 숨겨지지 않던 문제를 수정했습니다.",
            "[파티 찾기 목록] 이제 새로운 역할 아이콘이 파티 구성하기의 공격대 및 사용자 설정 그룹에서도 작동합니다.",
            "[스킨] NetEase Meeting Stone 스킨 최적화.",
            "[스킨] WeakAura Options 스킨 최적화.",
            "[스킨] 퀘스트 추적기 스킨 최적화.",
            "[스킨] static popups 스킨 최적화.",
            "[스킨] ElvUI 캐스팅바 스킨 최적화.",
            "[살펴보기] 캐릭터 인물 사진에 배경을 추가합니다.",
            "[알림] 파티 상태 확인 로직 롤백.",
            "[미니맵 버튼 통합 바] Narcissus 아이콘을 통합바에 추가하지 않습니다. Thanks @ryanfys",
            "[미니맵 버튼 통합 바] BagSync 아이콘을 지원합니다. Thanks @ryanfys",
            "[미니맵 버튼 통합 바] Guild Roster Manager 아이콘을 지원합니다.",
            "[미니맵 버튼 통합 바] 하이라이트 테두리를 추가합니다.",
            "[미니맵 버튼 통합 바] 마우스 오버 시 보이는 애니메이션을 개선하였습니다."
        }
    }
}