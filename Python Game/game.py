import random

def guess_the_number():
    print("Welcome to the Number Guessing Game!")
    print("I'm thinking of a number between 1 and 100.")
    
    # Randomly choose a number between 1 and 100
    secret_number = random.randint(1, 100)
    
    # Set the initial number of attempts
    attempts = 0
    
    while True:
        # Take input from the player
        guess = input("Make a guess: ")
        
        # Check if the input is a number
        if guess.isdigit():
            guess = int(guess)
            attempts += 1
            
            # Check if the guess is correct
            if guess < secret_number:
                print("Too low.")
            elif guess > secret_number:
                print("Too high.")
            else:
                print(f"Congratulations! You've guessed the number {secret_number} correctly in {attempts} attempts.")
                break
        else:
            print("Please enter a valid number.")

# Start the game
guess_the_number()
