```gdscript
extends KinematicBody2D

# Variables
export var speed: float = 200.0  # Velocidad de movimiento
var velocity: Vector2 = Vector2()

func _physics_process(delta):
    # Resetea la velocidad
    velocity = Vector2()

    # Movimiento horizontal
    if Input.is_action_pressed("ui_right"):
        velocity.x += speed
    elif Input.is_action_pressed("ui_left"):
        velocity.x -= speed

    # Movimiento vertical
    if Input.is_action_pressed("ui_down"):
        velocity.y += speed
    elif Input.is_action_pressed("ui_up"):
        velocity.y -= speed

    # Normaliza la velocidad si se mueve en diagonal para evitar un movimiento más rápido en diagonal
    if velocity.length() > 0:
        velocity = velocity.normalized() * speed

    # Mueve el personaje
    move_and_slide(velocity)

```

Para que esto funcione:

1. Asegúrate de que el nodo al que adjuntas este script sea un `KinematicBody2D`.
2. Ve a "Project" > "Project Settings" > "Input Map" y verifica que las acciones `ui_right`, `ui_left`, `ui_down`, y `ui_up` estén configuradas para las teclas de flecha derecha, izquierda, abajo y arriba, respectivamente.