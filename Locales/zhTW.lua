local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("ElvUI", "zhTW")
if not L then return end
-- zhTW
-- 设置主界面
L["WindTools"] = "|cff039be5W|r|cff03a9f4i|r|cff29b6f6n|r|cff4fc3f7d|r|cff81d4fa工|r|cffb3e5fc具|r|cffe1f5fe箱|r"
L["%s version: %s"] = "%s 版本：%s"
L["%s is a collection of useful tools."] = "%s 是一個易用功能的整合包。\n整合包內的插件大部分為網路上搜集而來。\n在中文化之余，還進行了多次自定義修改。\n部分功能和設置項可能和原版功能存在較大出入。\n\n十分感謝所有的魔獸世界插件開發者！"
L["Release / Update Link"] = "發佈 / 更新鏈接"
L["You can use the following link to get more information (in Chinese)"] = "你可以用下方的鏈接查看更多相關訊息（簡體中文）"
L["Author"] = "作者"
L["General"] = "通用"
L["Scale"] = "縮放"
L["ElvUI WindTools has been updated and the data structure of the stored config has also been greatly changed. In order to make these changes take effect, you may have to reload your User Interface."] = "ElvUI Wind工具箱 已經升級，同時插件配置的數據結構也發生了巨大的改變。 為了使這些改變生效，你可能不得不重載你的用戶界面。"
-- 功能界面
L["Enable"] = "開啟"
L["Disable"] = "關閉"
L["Information"] = "簡介"
L["Author: %s, Edited by %s"] = "原作者：%s， 修改者：%s"
L["Setting"] = "設定"
L["Frame Setting"] = "框架設定"
L["Other Setting"] = "其他設定"
-- 分类
L["Interface"] = "介面增強"
L["Trade"] = "交易相關"
L["Chat"] = "聊天相關"
L["Quest"] = "任務相關"
L["More Tools"] = "更多功能"
L["Credit List"] = "鳴謝名單"
-- 任务通告
L["No Detail"] = "非詳細通報"
L["Instance"] = "副本"
L["Raid"] = "團隊副本"
L["Party"] = "隊伍"
L["Solo"] = "個人"
-- 已学配方染色
L["Already Known"] = "已學配方上色"
L["Change item color if learned before."] = "如果學習過了，那麼商品會被上色。"
L["Color"] = "顏色"
-- 通告系统
L["Announce System"] = "技能通告"
L["A simply announce system."] = "一個很簡單的通告系統"
L["Interrupt"] = "斷法"
L["Solo Yell"] = "單人的時候大喊"
L["Include Pet"] = "包括寵物斷法"
L["Res And Threat"] = "戰復及誤導"
L["Res Thanks"] = "復活感謝"
L["Raid Useful Spells"] = "副本常用技能（機器人等）"
L["Enable Miss"] = "開啟 Miss 通告"
L["Player Smart"] = "玩家智能通告"
L["Pet Smart"] = "寵物智能通告"
L["Other Tank Smart"] = "其他坦克智能通告"
L["Include Pet"] = "包括寵物"
L["Include Other Tank"] = "包括其他坦克"
L["Taunt"] = "嘲諷"
-- 增强世界地图
L["Enhanced World Map"] ="世界地圖增強"
L["Customize your world map."] = "增強你的世界地圖"
L["World Map Frame Size"] = "世界地圖大小"
L["Reveal"] = "去除迷霧"
-- 自动任务物品按键
L["Auto Buttons"] = "任務物品按鍵"
L["Add two bars to contain questitem buttons and inventoryitem buttons."] = "添加兩行動作條來顯示任務物品和裝備中的飾品"
L["Auto QuestItem Button"] = "自動任務物品按鍵"
L["Auto InventoryItem Button"] = "自動裝備飾品按鍵"
L["Keybind Text"] = "快捷列文字"
L["Item Count"] = "物品數量"
L["Font Size"] = "字體大小"
L["Quset Button Number"] = "任務物品按鈕數量"
L["Buttons Per Row"] = "每行按鈕個數"
L["Size"] = "大小"
L["Slot Button Number"] = "裝備按鈕數量"
L["Item-ID"] = "物品ID"
L["Add ItemID"] = "添加物品ID"
L["Delete ItemID"] = "刪除物品ID"
L["Must is itemID!"] = "必須是物品的ID"
L["Whitelist"] = "白名單"
L["Blacklist"] = "黑名單"
-- 进入战斗提示功能
L["Alert you after enter or leave combat."] = "在進出戰鬥時彈出提示訊息"
L["Enter Combat Alert"] = "進出戰鬥提示"
L["Use custom text"] = "使用自定義文字"
L["Custom text (Enter)"] = "自定義文字（進入戰鬥）"
L["Custom text (Leave)"] = "自定義文字（離開戰鬥）"
L["Default is 0.65"] = "預設為 0.65"
L["Enter Combat"] = "進入戰鬥"
L["Leave Combat"] = "離開戰鬥"
-- 右键菜单增强
L["Right-click Menu"] = "右鍵菜單"
L["Enhanced right-click menu"] = "增強的右鍵菜單"
L["Features"] = "功能"
L["Armory"] = "英雄榜"
L["Query Detail"] = "查詢玩家"
L["Get Name"] = "獲取名字"
L["Guild Invite"] = "公會邀請"
L["Add Friend"] = "添加好友"
L["Report MyStats"] = "報告裝等"
L["Invite"] = "邀請"
L["Friend Menu"] = "好友右鍵菜單"
L["Chat Roster Menu"] = "聊天右鍵菜單"
L["Guild Menu"] = "公會右鍵菜單"
L["Fix REPORT"] = "修復回報功能"
-- 增强好友菜单
L["Enhanced Friend List"] = "增強好友列表"
L["Customize friend frame."] = "自定美化你的好友列表"
L["Features"] = "功能"
L["Name color & Level"] = "姓名染色 & 等級"
L["Enhanced Texuture"] = "材質增強"
L["Name Font"] = "名字字型"
L["The font that the RealID / Character Name / Level uses."] = "用在 RealID / 角色名 / 等級的字型"
L["Name Font Size"] = "名字字型大小"
L["The font size that the RealID / Character Name / Level uses."] = "用在 RealID / 角色名 / 等級的字型大小"
L["Name Font Flag"] = "名字描邊"
L["The font flag that the RealID / Character Name / Level uses."] = "用在 RealID / 角色名 / 等級的字型描邊"
L["Info Font"] = "訊息字型"
L["The font that the Zone / Server uses."] = "用在 地區 / 伺服器名 的字型"
L["Info Font Size"] = "訊息字型大小"
L["The font size that the Zone / Server uses."] = "用在 地區 / 伺服器名 的字型大小"
L["Info Font Outline"] = "訊息字型描邊"
L["The font flag that the Zone / Server uses."] = "用在 地區 / 伺服器名 的字型描邊"
L["Status Icon Pack"] = "狀態圖標包"
L["Different Status Icons."] = "不同的狀態圖標"
L["Default"] = "預設"
L["Square"] = "方塊風格"
L["Diablo 3"] = "暗黑破壞神 III"
L["Game Icons"] = "遊戲圖標"
L["Game Icon Preview"] = "遊戲圖標預覽"
L["Status Icon Preview"] = "狀態圖標預覽"
L["Blizzard Chat"] = "暴雪聊天風格"
L["Flat Style"] = "扁平風格"
L["Glossy"] = "光澤風格"
L["Launcher"] = "戰網風格"
L["Overwatch"] = "鬥陣特攻"
L["Starcraft"] = "星海爭霸"
L["Starcraft 2"] = "星海爭霸 II"
L["App"] = "軟體"
L["Mobile"] = "行動裝置"
L["Hearthstone"] = "爐石戰記"
L["Destiny 2"] = "天命 2"
L["Hero of the Storm"] = "暴雪英霸"
L["None"] = "無"
L["OUTLINE"] = "輪廓"
L["MONOCHROME"] = "黑白"
L["MONOCROMEOUTLINE"] = "黑白輪廓"
L["THICKOUTLINE"] = "厚輪廓"
-- CVar编辑器
L["CVarsTool"] = "CVar工具"
L["Setting CVars easily."] = "更加便捷地設定 CVars。"
L["Effect Control"] = "效果控制"
L["Glow Effect"] = "全屏泛光"
L["Death Effect"] = "死亡畫面"
L["Nether Effect"] = "隱身術特效"
L["Convenient Setting"] = "便利性設定"
L["Auto Compare"] = "自動比對裝備"
L["Tooltips quest info"] = "滑鼠訊息任務追蹤（如：11/20 殺死熊怪）"
L["Fix Problem"] = "修復問題（沒有錯誤可以不用管）"
L["Raw Mouse"] = "原生滑鼠信號（修復滑鼠突然移到中間的問題）"
L["Raw Mouse Acceleration"] = "原生滑鼠信號加速（看使用習慣）"
-- 增强暴雪框体
L["Enhanced Blizzard Frame"] = "暴雪框架增強"
L["Move frames and set scale of buttons."] = "移動框架，設定按鈕大小。"
L["Move Frames"] = "移動框架"
L["Move Blizzard Frame"] = "移動暴雪框架"
L["Move ElvUI Bag"] = "移動 ElvUI 背包"
L["Remember Position"] = "記憶移動位置"
L["Error Frame"] = "錯誤框架"
L["Vehicle Seat Scale"] = "載具座位縮放"
-- 任务列表增强
L["Quest List Enhanced"] = "任務列表"
L["Add the level information in front of the quest name."] = "讓任務列表有等級提示功能，上色，自動縮短任務名。"
L["Title Class Color"] = "標題職業顏色"
L['Quest Level'] = "任務等級"
L["Tracker Level"] = "任務追蹤顯示等級"
L["Tracker width"] = "追蹤框架寬度"
L["Quest details level"] = "任務詳細顯示等級"
L["Ignore high level"] = "忽略最高等級"
L["Left Side Minimize Button"] = "左側收起按鈕"
L["Frame Title"] = "框架名"
L["Display level info in quest title (Tracker)"] = "在任務追蹤標題上顯示等級信息"
L["Display level info in quest title (Quest details)"] = "在任務詳細訊息的標題上顯示等級信息"
-- 简单阴影
L["EasyShadow"] = "簡單陰影"
L["Add shadow to frames."] = "為框架添加陰影效果。"
L["Game Tooltip"] = "滑鼠提示"
L["MiniMap"] = "小地圖"
L["Game Menu"] = "遊戲菜單"
L["Interface Options"] = "介面選項"
L["Video Options"] = "顯示設定（系統）"
L["Action Bar"] = "快捷列"
L["Unit Frames"] = "單位框架（全部）"
L["Cast Bar"] = "施法條"
L["Cast Bar Icon"] = "施法條圖標"
L["Class Bar"] = "職業特有條"
L["Unit Frame Aura"] = "單位框體光環"
L["Quest Icon"] = "任務物品圖標"
-- Tag 增强
L["Wan"] = "萬"
L["Yi"]  = "億"
L["Enhanced Tag"] = "Tag 增強"
L["Add some tags."] = "添加一些自定義 Tag。"
L["Chinese W/Y"] = "中文 萬/億 單位"
L["Example:"] = "範例："
L["Health"] = "血量"
L["Power"] = "能量"
-- 小地图按钮
L["Minimap Button Bar"] = "小地圖按鍵條"
L["Add a bar to contain minimap buttons."] = "添加一個條來管理小地圖按鍵。"
L['Skin Style'] = "美化風格"
L['Reversed'] = "翻轉"
L['Layout Direction'] = "佈局方向"
L['Change settings for how the minimap buttons are skinned.'] = "修改小地圖按鍵的風格"
L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = "普通的話會自右向左或者從上至下， 選擇翻轉的話將倒過來放置。"
L['The frame is not shown unless you mouse over the frame.'] = "在滑鼠未經過時不會顯示"
L['The size of the minimap buttons.'] = "小地圖按鍵的大小"
L['No Anchor Bar'] = "不對齊"
L['Horizontal Anchor Bar'] = "水平對齊"
L['Vertical Anchor Bar'] = "垂直對齊"
L['Button Size'] = "按鍵尺寸"
L["Backdrop"] = "背景"
L['Mouse Over'] = "鼠標滑過顯示"
L["Minimap Buttons"] = "小地圖按鍵"
L['Buttons per row'] = "每行按鍵數"
L['The max number of buttons when a new row starts.'] = "每一行的最大按鍵數量。"
-- 关闭视频通话
L["Close Quest Voice"] = "關閉視訊"
L["Disable TalkingHeadFrame."] = "關閉任務視訊功能。"
-- 屏幕景深
L["iShadow"] = "屏幕景深"
L["Movie effect for WoW."] = "讓魔獸世界看起來有電影般的效果。"
L["Shadow Level"] = "陰影等級"
L["Default is 50."] = "預設值為50。"
-- 光速拾取
L["Fast Loot"] = "光速拾取"
L["Let auto-loot quickly."] = "加快自动拾取物品的速度。"
L["Fast Loot Speed"] = "光速拾取速度"
L["Default is 0.3, DO NOT change it unless Fast Loot is not worked."] = "預設數值為0.3，除非光速拾取功能出錯，你不用修改它。"
-- 鼠标提示增强
L["Enhanced Tooltip"] = "浮動提示增強"
L["Useful tooltip tweaks."] = "一些實用的浮動提示增強功能。"
L["Progression"] = "進度提示"
L["Add progression info to tooltip."] = "添加團隊副本進度到滑鼠提示。"
L["Mythic"] = "傳奇"
L["Heroic"] = "英雄"
L["Normal"] = "普通"
L["LFR"] =  "隨團"
L["Uldir"] = "奧迪爾"
L["BattleOfDazaralor"] = true
L["CrucibleOfStorms"] = true
L["Dungeon"] = true
L["MythicDungeon"] = true
L["AtalDazar"] = true
L["FreeHold"] = true
L["KingsRest"] = true
L["ShrineOfTheStorm"] = true
L["SiegeOfBoralus"] = true
L["TempleOfSethrealiss"] = true
L["TheMOTHERLODE!!"] = true
L["TheUnderrot"] = true
L["TolDagor"] = true
L["WaycrestManor"] = true
L["Mythic+"] = true
L["Mythic+(LEG&BFA)"] = true
-- 频道切换
L["Tab Chat Mod"] = "Tab 切換頻道"
L["Use tab to switch channel."] = "可以使用 Tab 來快速切換頻道。"
L["Whisper Cycle"] = "密語獨立循環"
L["Include Officer Channel"] = "包括幹部頻道"
-- 任务通告
L["Quest Announcment"] = "任務通告"
L["Let you know quest is completed."] = "當任務完成之時會通告。"
-- 自动摧毁
L["Auto Delete"] = "自動填入DELETE"
L["Enter DELETE automatically."] = "在摧毀物品時自動填入DELETE。"
-- 目标进度
L["Objective Progress"] = "目標進度"
L["Add quest/mythic+ dungeon progress to tooltip."] = "添加任務或是傳奇鑰石地城怪物進度到滑鼠提示。"
-- 单位框体精英龙
L["Dragon Overlay"] = "單位框架精英龍"
L["Provides an overlay on UnitFrames for Boss, Elite, Rare and RareElite"] = "提供一個覆蓋層在王，精英，稀有及稀有精英怪的框架上。"
L['Class Icon'] = "職業圖標"
L['Flip Dragon'] = "翻轉龍圖標"
L['Class Icon Points'] = "職業圖標位置"
L['Dragon Points'] = "龍圖標位置"
L['Relative Point'] = "附著點"
L['X Offset'] = "橫向偏移"
L['Y Offset'] = "縱向偏移"
L["Dragon Texture"] = "龍的材質"
L['Elite'] = "精良"
L['Rare'] = "稀有"
L['RareElite'] = "稀有精良"
L['World Boss'] = "世界首領"
L["Azure"] = "蒼藍雲蛟"
L["Chromatic"] = "守護巨龍之心"
L["Crimson"] = "赤紅雲蛟"
L["Golden"] = "金色雲蛟"
L["Jade"] = "翠玉雲蛟"
L["Onyx"] = "瑪瑙雲蛟"
L["Heavenly Blue"] = "蒼藍穹天雲蛟"
L["Heavenly Crimson"] = "赤紅穹天雲蛟"
L["Heavenly Golden"] = "金色穹天雲蛟"
L["Heavenly Jade"] = "雷霆翡玉雲蛟"
L["Heavenly Onyx"] = "瑪瑙穹天雲蛟"
L["Classic Elite"] = "經典 精良"
L["Classic Rare Elite"] = "經典 稀有精良"
L["Classic Rare"] = "經典 稀有"
L["Classic Boss"] = "經典 團隊首領"
L['Frame Strata'] = "框架層級"
L['Frame Level'] = "框架等級"
L['Icon Size'] = "圖標尺寸"
L['Width'] = "寬度"
L['Height'] = "高度"
-- 信息文字
L['Distance'] = "距離"
L['Target Range'] = "目標距離"
L["MicroMenu"] = "遊戲選項"
-- 艾泽里特特质提示
L["Azerite Tooltip"] = "艾澤萊晶岩之力提示"
L["Show azerite traits in the tooltip when you mouseover an azerite item."] = "在你的物品提示訊息中顯示艾澤萊晶岩之力。"
L["Level"] = "等級"
L["Replace Blizzard Azerite Text"] = "替代原有特質提示文字"
L["Current Spec Only"] = "當前專精"
L["Show traits for your current specialization only"] = "僅顯示當前專精"
L["Compact Mode"] = "緊湊模式"
L["Only icons"] = "僅顯示圖標，無艾澤萊晶岩之力名字提示"
L["Bag icon"] = "背包角標"
L["Show selected traits in bags (works only with Blizzard Bags and Bagnon)"] = "在背包中提示選中的特質(只在使用暴雪背包和Bagnon時會生效)"
L["Character panel icon"] = "人物面板角標"
L["Show selected traits in Character Frame"] = "在人物面板中提示選中的特質"