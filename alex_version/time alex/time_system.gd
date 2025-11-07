class_name TimeSystem extends Node

signal updated

@export var date_time: DateTime
@export var ticks_pr_seconds: int = 6

func _process(delta: float) -> void:
	date_time.increase_by_sec(delta * ticks_pr_seconds) # we can increase ticks natin here ( visible sa panel)
	updated.emit(date_time)
