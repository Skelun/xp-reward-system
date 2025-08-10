execute as @s[tag=sklps,tag=sklps.tag.welcome,gamemode=!creative] run tellraw @s [\
    {"text":"<",color:"white"},\
    {"text":"Skelun's ",color:"#EDD11C"},\
    {"text":"XP Reward System",color:"#873CE8"},\
    {"text":">",color:"white"},\
    {"text":"\nThis command only works in creative mode.","italic":true,"color":"white"}\
]

give @s[tag=sklps,tag=sklps.tag.welcome,gamemode=creative] written_book[\
    written_book_content={\
        title:"XP Reward System - Settings",\
        author:"Skelun",\
        generation:0,\
        pages:[\
            [\
                {"text":"         Skelun's","color":"#EDD11C"},\
                {"text":"\n"},\
                {"text":"     XP Reward","bold":true,"color":"#873CE8"},\
                {"text":"\n"},\
                {"text":"       System","bold":true,"color":"#873CE8"},\
                {"text":"\n"},\
                {"text":"          v2.6.1","bold":false,"italic":true,"color":"gray"},\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"      SETTINGS","bold":true,"color":"black"},\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"  in the next page >>>","color":"gray","italic":true},\
            ],\
            [\
                \
                {"text":"Toogle XP ","bold":true,"color":"dark_gray"},\
                {"text":"Earning Methods:","bold":true,"color":"dark_gray"},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/cutting"}},\
                {"text":"Cutting","bold":false,"underlined":true,"color":"#28a06e",\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/cutting"},\
                "hover_event":{"action":"show_text","value":"Click to Enable/Disable\nCutting\n"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/digging"}},\
                {"text":"Digging","bold":false,"underlined":true,"color":"#ad7832",\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/digging"},\
                "hover_event":{"action":"show_text","value":"Click to Enable/Disable\nDigging\n"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/farming"}},\
                {"text":"Farming","bold":false,"underlined":true,"color":"#c0c25f",\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/farming"},\
                "hover_event":{"action":"show_text","value":"Click to Enable/Disable\nFarming\n"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/harvesting"},\
                "hover_event":{"action":"show_text","value":["When using a mod/data pack that allows Right-Click harvesting it will be counted towards Faming"]}},\
                {"text":"Harvesting","bold":false,"underlined":true,"color":"#a4c25f",\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/harvesting"},\
                "hover_event":{"action":"show_text","value":"Click to Enable/Disable\nHarvesting\n\nWhat is harvesting?\nWhen using a mod/data pack that allows Right-Click harvesting it will be counted towards Faming"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/mining"}},\
                {"text":"Mining","bold":false,"underlined":true,"color":"#939ba8",\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/mining"},\
                "hover_event":{"action":"show_text","value":"Click to Enable/Disable\nMining\n"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/traveling"}},\
                {"text":"Traveling","bold":false,"underlined":true,"color":"#596ac9",\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/traveling"},\
                "hover_event":{"action":"show_text","value":"Click to Enable/Disable\nTraveling\n"}},\
                \
            ],\
            [\
                {"text":"XP Amount:","bold":true,"color":"dark_gray"},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/set/xp_x1"}},\
                {"text":"Normal ✴","bold":false,"underlined":true,"color":"#873CE8",\
                "click_event":{"action":"run_command","command":"function sklps:settings/set/xp_x1"},\
                "hover_event":{"action":"show_text","value":"Gives the normal XP amount"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/set/xp_x2"}},\
                {"text":"Double ✴✴","bold":false,"underlined":true,"color":"#6805e9",\
                "click_event":{"action":"run_command","command":"function sklps:settings/set/xp_x2"},\
                "hover_event":{"action":"show_text","value":"Gives double the amount of XP"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/set/xp_x3"}},\
                {"text":"Triple ✴✴✴","bold":false,"underlined":true,"color":"#4300fa",\
                "click_event":{"action":"run_command","command":"function sklps:settings/set/xp_x3"},\
                "hover_event":{"action":"show_text","value":"Gives triple the amount of XP"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"Sound:","bold":true,"color":"dark_gray"},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/xp_feedback_sound"}},\
                {"text":"XP Feedback","bold":false,"underlined":true,"color":"#d1c131",\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/xp_feedback_sound"},\
                "hover_event":{"action":"show_text","value":"Enables/Disables the sound when you get XP for doing actions"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
            ],\
            [\
                {"text":"Debugging:","bold":true,"color":"dark_gray"},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/debug"}},\
                {"text":"Debug Mode","bold":false,"underlined":true,"color":"#873CE8",\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/debug"},\
                "hover_event":{"action":"show_text","value":"Click to Enable/Disable the debugging mode\n\nIt will display text when perfoming certain actions"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \                
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/debug_display"}},\
                {"text":"Display Scoreboards","bold":false,"underlined":true,"color":"#2da36c",\
                "click_event":{"action":"run_command","command":"function sklps:settings/toggle/debug_display"},\
                "hover_event":{"action":"show_text","value":"Click to Enable/Disable the scoreboard display\n\nA sidebar will show your scoreboards"}},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"run_command","command":"function sklps:settings/debug/items"}},\
                {"text":"Get OP Items","bold":false,"underlined":true,"color":"#cab141",\
                "click_event":{"action":"run_command","command":"function sklps:settings/debug/items"},\
                "hover_event":{"action":"show_text","value":"Click to Enable/Disable\nCutting\n"}},\
                {"text":"\n"},\
            ],\
            [\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"\n"},\
                {"text":"If you wish to give any feedback, ask or talk something with me:","bold":true,"color":"dark_gray"},\
                {"text":"\n"},\
                {"text":"\n"},\
                \
                {"text":"→ ","bold":false,"underlined":true,\
                "click_event":{"action":"open_url","url":"https://www.planetminecraft.com/member/skelun/"}},\
                {"text":"PM me on\nPlanet Minecraft","bold":false,"underlined":true,"color":"#873CE8",\
                "click_event":{"action":"open_url","url":"https://www.planetminecraft.com/member/skelun/"},\
                "hover_event":{"action":"show_text","value":"Click to go to my profile on Planet Minecraft"}},\
                {"text":"\n"},\
                {"text":"\n"}\
            ]\
        ]\
    }\
]