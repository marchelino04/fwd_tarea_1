

## Requerimientos

Se procedera a crear un juego con los siguientes requerimientos de usuario:


```
Solicita al jugador que ingrese su nombre. Usa su nombre para imprimir un saludo.

Genera un número aleatorio del 1 al 100 y guárdalo como el número objetivo que el jugador debe adivinar.

Lleva un registro de cuántas suposiciones ha hecho el jugador. Antes de cada suposición, hazle saber cuántas suposiciones (de 10) le quedan.

Solicita al jugador que haga una suposición sobre cuál es el número objetivo.

Si la suposición del jugador es menor que el número objetivo, di: "Vaya. Tu suposición fue BAJA". Si la suposición del jugador es mayor que el número objetivo, di: "Vaya. Tu suposición fue ALTA".

Si la suposición del jugador es igual al número objetivo, dile: "Buen trabajo, [nombre]! ¡Adivinaste mi número en [número de suposiciones] intentos!"

Si el jugador se queda sin turnos sin adivinar correctamente, di: "Lo siento. No acertaste mi número. Mi número era [objetivo]".

Sigue permitiendo que el jugador adivine hasta que lo haga correctamente o se quede sin turnos.
```

## Resultado Esperado

- Cuando se ejecuta el script con el comando `ruby game.rb`, este deberia permitir jugar a dos personas.
- Cuando se ejecutan los tests con el comando `rspec spec`, todos deberian estar en verde; Inicialmente hay dos tests en verde y 4 rn rojo.


## Tips para Resolverlo

1. Crear un número aleatorio en Ruby: Puedes generar un número aleatorio en Ruby utilizando el método  `rand`. Si quieres un número aleatorio entre 1 y 100, puedes usar rand(1..100).

2. Estructura de control if: En Ruby, puedes usar una declaración if para ejecutar código si una condición es verdadera. Por ejemplo:

```rb
if condición
  # Ejecuta algún código
end
```

3. Estructura de control while: Un bucle while en Ruby ejecuta un bloque de código mientras una condición sea verdadera. Por ejemplo:

```rb
while condición
  # Ejecuta algún código
end
```

4. Convertir el input del usuario a un número: Cuando obtienes la entrada del usuario con gets.chomp, esta es una cadena. Para convertirlo a un número, puedes usar to_i. Por ejemplo, gets.chomp.to_i.

## Tests

Se recomienda este recurso para iniciar a leer acerca de los tests:

[The Odin Project - Rspec](https://www.theodinproject.com/lessons/ruby-introduction-to-rspec)

## Docker

Si se usa Docker, se puede correr los siguientes comandos para ejecutar los tests:

```
docker build -t my-rspec-image .
docker run --rm my-rspec-image
```

Para ingresar al contenedor:

```
docker run -it my-rspec-image bash
```
