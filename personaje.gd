// Creame una script para godot 3.5 que me permita
// interactual con el sprite de izquierda a derecha con las
// flechas del teclado

extends KinematicBody2D

var speed = 200
var velocity = Vector2()

func _physics_process(delta):
    velocity = Vector2()
    if Input.is_action_pressed("ui_right"):
        velocity.x += 1
    if Input.is_action_pressed("ui_left"):
        velocity.x -= 1
    velocity = velocity.normalized() * speed
    move_and_slide(velocity)

func _ready():
    pass