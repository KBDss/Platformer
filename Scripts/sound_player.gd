extends Node

onready var music = AudioStreamPlayer.new()

var music_tracks = {
	"title_track":"res://SFX/Music/Different Heaven & EH!DE - My Heart (mp3cut.net).wav",
	"main":"res://SFX/Music/yt1s.io - 1. Basshunter - DotA (Radio Edit) (64 kbps) (mp3cut.net).wav",
}

var sound_effects = {
	"jump":"res://SFX/Effects/jump.wav",
	"dead":"res://SFX/Effects/hitHurt.wav",
	"land":"res://SFX/Effects/land.wav",
}


var music_db = 1
var sound_db = 1

func change_music_db(val):
	music_db = linear2db(val)

func change_sound_db(val):
	sound_db = linear2db(val)

func _ready():
	music.stream = load(music_tracks["title_track"])
	add_child(music)
	music.play()


func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
	

func play_main_music():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()
