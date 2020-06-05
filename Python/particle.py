from __future__ import annotations

from typing import List


class Vec:
    """Vetor com componentes x e y."""

    def __init__(self, x: float, y: float):
        self.x = x
        self.y = y

    def plus(self, other: Vec):
        """Soma um vetor com o outro."""
        return Vec(self.x + other.x, self.y + other.y)

    def times(self, factor: float):
        """Multiplica o vetor por um valor escalar."""
        return Vec(self.x * factor, self.y * factor)


class Particle:
    """Particula com posicao (x, y) e velocidade (Vx, Vy)."""

    def __init__(self, pos: Vec, speed: Vec):
        self.pos = pos
        self.speed = speed
        self.acceleration = Vec(0, 0)


class Obstacle:
    """Obstaculo com comprimento, largura e posicao (x, y)."""

    def __init__(self, length: float, width: float, x: float, y: float):
        self.length = length
        self.width = width
        self.pos = Vec(x, y)

    @staticmethod
    def create(index: int):
        """Cria um obstaculo a partir de valores dados como input."""
        length = float(input(f"Entre o comprimento do {index + 1}° obstaculo: "))
        width = float(input(f"Entre a largura do {index + 1}° obstaculo: "))
        x_pos = float(input(f"Entre a posicao em x do {index + 1}° obstaculo: "))
        y_pos = float(input(f"Entre a posicao em y do {index + 1}° obstaculo: "))

        return Obstacle(length, width, x_pos, y_pos)


class Force:
    """Forca com magnitude e direcao (x, y)."""

    def __init__(self, magnitude: float, x: float, y: float):
        self.magnitude = magnitude
        self.direction = Vec(x, y)


class State:
    """Estado da simulacao."""

    def __init__(self, particle: Particle, obstacles: List[Obstacle]):
        self.particle = particle
        self.obstacles = obstacles


def main():
    """Funcao principal que executa o programa."""
    x_pos = float(input("Entre a posicao inicial em x da particula: "))
    y_pos = float(input("Entre a posicao inicial em y da particula: "))
    x_speed = float(input("Entre a componente Vx da velocidade inicial da particula: "))
    y_speed = float(input("Entre a componente Vy da velocidade inicial da particula: "))

    initial_pos = Vec(x_pos, y_pos)
    initial_speed = Vec(x_speed, y_speed)

    particle = Particle(initial_pos, initial_speed)

    num_obstacles = int(input("Entre o numero de obstaculos: "))
    # No minimo 3 obstaculos
    num_obstacles = num_obstacles if num_obstacles >= 3 else 3

    obstacles = []
    for i in range(num_obstacles):
        obstacles.append(Obstacle.create(i))

    state = State(particle, obstacles)

    while True:
        answer = input("Deseja inserir uma forca que atuara na particula? [Y/n] ")
        particle = state.particle
        new_accel = particle.acceleration
        if answer.lower() != "n":
            magnitude = float(input("Entre o modulo da forca: "))
            force_x = float(input("Entre a componente x da forca: "))
            force_y = float(input("Entre a componente y da forca: "))
            force = Force(magnitude, force_x, force_y)
            new_accel = particle.acceleration.plus(
                force.direction.x + force.magnitude, force.direction.y + force.magnitude
            )
        new_speed_x = particle.speed.x + new_accel.x
        new_speed_y = particle.speed.y + new_accel.y
        new_pos_x = particle.pos.x + new_speed_x  # * 1 segundo
        new_pos_y = particle.pos.y + new_speed_y  # * 1 segundo

        # Check collisions
        for obstacle in state.obstacles:
            if new_pos_x >= obstacle.pos.x + obstacle.width:
                new_speed_x *= -1
                new_pos_x = obstacle.pos.x
                print(
                    f"Particula colidiu com obstaculo em ({obstacle.pos.x}, {obstacle.pos.y})"
                )
            if new_pos_y >= obstacle.pos.y + obstacle.length:
                new_speed_y *= -1
                new_pos_y = obstacle.pos.y
                print(
                    f"Particula colidiu com obstaculo em ({obstacle.pos.x}, {obstacle.pos.y})"
                )

        particle = Particle(Vec(new_pos_x, new_pos_y), Vec(new_speed_x, new_speed_y))
        state = State(particle, obstacles)

        print(f"Posicao da particula: x = {particle.pos.x}, y = {particle.pos.y}")

    print(f"Posicao da particula: x = {particle.pos.x}, y = {particle.pos.y}")
    print(f"Velocidade da particula: Vx = {particle.speed.x}, Vy = {particle.speed.y}")


if __name__ == "__main__":
    main()
