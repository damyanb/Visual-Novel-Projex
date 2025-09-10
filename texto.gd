extends RichTextLabel


var dialog = ["先生: 残酷な天使のように ",
"先生: ...                       ",
"先生: 少年よ　神話になれ 青い風がいま 胸のドアを叩いても 私だけをただ見つめて 微笑んでるあなた そっとふれるもの", 
"先生: もとめることに夢中で 運命さえまだ知らない いたいけな瞳 ",
"先生: だけどいつか気付くでしょう　その背中には 遥か未来　めざすための　羽根があること ",
"私: ...              "]
var page = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process_input(true)
	set_bbcode(dialog[page])
	set_visible_characters(0)




func _on_Timer_timeout():
	if get_visible_characters() <= get_total_character_count():
		set_visible_characters(get_visible_characters()+1)
	if page ==  dialog.size()-1:
		page = 0
	if get_visible_characters() > get_total_character_count():
		if page < dialog.size()-1:
			page += 1
			set_bbcode(dialog[page])
			set_visible_characters(0)
