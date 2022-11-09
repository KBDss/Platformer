extends Node

onready var music = AudioStreamPlayer.new()

var music_tracks = {
	"title_track":"res://SFX/Music/Different Heaven & EH!DE - My Heart (mp3cut.net).wav",
	"main":"res://SFX/Music/Disfigure - Blank.mp3",
	"end_track":"res://SFX/Music/OMFG - Hello.mp3",
}

var sound_effects = {
	"jump":"res://SFX/Effects/jump.wav",
	"dead":"res://SFX/Effects/hitHurt.wav",
	"land":"res://SFX/Effects/land.wav",
}


var music_db = -25
var sound_db = -25

func change_music_db(val):
	music_db = linear2db(val)

func change_sound_db(val):
	sound_db = linear2db(val)

func _ready():
	music.volume_db = music_db
	music.stream = load(music_tracks["title_track"])
	add_child(music)
	music.play()


func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.volume_db = sound_db
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
	

func play_main_music():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()

func play_end_track_music():
	music.stream = load(music_tracks["end_track"])
	add_child(music)
	music.play()
