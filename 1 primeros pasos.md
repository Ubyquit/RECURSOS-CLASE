// Personajes godot 3.5, pasos desde la creación del nodo padre hasta el nodo hijo 

1. **KinematicBody2D**: Este será tu nodo principal. Representa el cuerpo del personaje y maneja las interacciones físicas básicas.

2. **CollisionShape2D**: Como un nodo hijo de KinematicBody2D. Definirás la forma de la colisión para el KinematicBody2D con este nodo. Usualmente asignarás una forma (por ejemplo, un rectángulo o un círculo) a este nodo para representar el área de colisión del personaje.

3. **Sprite**: Este nodo servirá para mostrar una imagen o animación de tu personaje. Lo agregarías como un hijo de KinematicBody2D.

4. **AnimationPlayer** (opcional): Si tu personaje tiene animaciones (como caminar, saltar, etc.), puedes agregar este nodo para gestionarlas.

5. **Camera2D** (opcional): Si quieres una cámara que siga a tu personaje, puedes agregar un nodo Camera2D como hijo del KinematicBody2D.

Esa estructura se vería más o menos así:

```
KinematicBody2D (Personaje)
|-- CollisionShape2D
|-- Sprite
|-- AnimationPlayer (opcional)
|-- Camera2D (opcional)
```

Una vez que tengas esta estructura básica:

- Configura la imagen de tu personaje en el nodo Sprite.
- Define la forma de colisión en CollisionShape2D para que coincida con el tamaño y forma de tu personaje.
- Si tienes animaciones, configúralas en el AnimationPlayer.

A partir de ahí, puedes agregar scripts a tu KinematicBody2D para manejar el movimiento, las interacciones y otras lógicas específicas de tu personaje.
