import random

def fight(player_hp, enemy_hp):
  while player_hp > 0 and enemy_hp > 0:
    player_attack = random.randint(1, 10)
    enemy_attack = random.randint(1, 5)

    enemy_hp -= player_attack
    print(f"আপনি শত্রুকে {player_attack} ক্ষতি করেছেন। শত্রুর এখন {enemy_hp} HP বাকি।")

    if enemy_hp <= 0:
      print("আপনি জিতে গেছেন!")
      break

    player_hp -= enemy_attack
    print(f"শত্রু আপনাকে {enemy_attack} ক্ষতি করেছে। আপনার এখন {player_hp} HP বাকি।")

    if player_hp <= 0:
      print("আপনি হেরে গেছেন!")
      break

# খেলার শুরু
player_hp = 100
enemy_hp = 80

fight(player_hp, enemy_hp)