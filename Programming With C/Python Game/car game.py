import pygame
import time
import random

pygame.init()

# Screen dimensions
width = 800
height = 600

# Colors
black = (0, 0, 0)
white = (255, 255, 255)
red = (255, 0, 0)
green = (0, 255, 0)

# Game display
gameDisplay = pygame.display.set_mode((width, height))
pygame.display.set_caption('Car Racing Game')

clock = pygame.time.Clock()
car_width = 50

# Load car image
carImg = pygame.image.load('car.png')

def car(x, y):
    gameDisplay.blit(carImg, (x, y))

def obstacles(obs_x, obs_y, obs_w, obs_h, color):
    pygame.draw.rect(gameDisplay, color, [obs_x, obs_y, obs_w, obs_h])

def text_objects(text, font):
    textSurface = font.render(text, True, black)
    return textSurface, textSurface.get_rect()

def message_display(text):
    largeText = pygame.font.Font('freesansbold.ttf', 50)
    TextSurf, TextRect = text_objects(text, largeText)
    TextRect.center = (width // 2, height // 2)
    gameDisplay.blit(TextSurf, TextRect)
    pygame.display.update()
    time.sleep(2)
    game_loop()

def crash():
    message_display('You Crashed!')

def game_loop():
    x = (width * 0.45)
    y = (height * 0.8)
    x_change = 0

    obs_startx = random.randrange(0, width - car_width)
    obs_starty = -600
    obs_speed = 7
    obs_width = 50
    obs_height = 100

    dodged = 0

    game_exit = False

    while not game_exit:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_LEFT:
                    x_change = -5
                if event.key == pygame.K_RIGHT:
                    x_change = 5

            if event.type == pygame.KEYUP:
                if event.key == pygame.K_LEFT or event.key == pygame.K_RIGHT:
                    x_change = 0

        x += x_change
        gameDisplay.fill(white)

        # Draw obstacles
        obstacles(obs_startx, obs_starty, obs_width, obs_height, black)
        obs_starty += obs_speed

        car(x, y)

        if x > width - car_width or x < 0:
            crash()

        if obs_starty > height:
            obs_starty = 0 - obs_height
            obs_startx = random.randrange(0, width - car_width)
            dodged += 1
            obs_speed += 0.5
            obs_width += (dodged * 1.2)

        if y < obs_starty + obs_height:
            if x > obs_startx and x < obs_startx + obs_width or x + car_width > obs_startx and x + car_width < obs_startx + obs_width:
                crash()

        pygame.display.update()
        clock.tick(60)

game_loop()
pygame.quit()
quit()
