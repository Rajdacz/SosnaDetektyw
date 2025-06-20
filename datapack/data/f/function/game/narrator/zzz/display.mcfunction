$execute as @a[tag=!player.ignore_subtitles,tag=!player.ignore_subtitles_characters] if score content_filter settings matches 0 run title @s actionbar [{"translate":"$(lang).target.$(t)"},{"translate":"$(lang).dial.$(d)"}]
$execute as @a[tag=!player.ignore_subtitles,tag=player.ignore_subtitles_characters] if score content_filter settings matches 0 run title @s actionbar {"translate":"$(lang).dial.$(d)"}

$execute as @a[tag=!player.ignore_subtitles,tag=!player.ignore_subtitles_characters] if score content_filter settings matches 1 run title @s actionbar [{"translate":"$(lang).target.$(t)"},{"translate":"$(lang).dial.$(d).filter","fallback":"%s","with":[{"translate": "$(lang).dial.$(d)"}]}]
$execute as @a[tag=!player.ignore_subtitles,tag=player.ignore_subtitles_characters] if score content_filter settings matches 1 run title @s actionbar {"translate":"$(lang).dial.$(d).filter","fallback":"%s","with":[{"translate": "$(lang).dial.$(d)"}]}

$execute as @a[tag=!player.ignore_voices] at @s run playsound as:voices.$(t).$(lang).$(d) voice @s ~ ~ ~