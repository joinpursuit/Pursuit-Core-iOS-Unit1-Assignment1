//
//  main.swift
//  MyAdventureGame
//
//  Created by Joshua Wynter on 10/4/19.
//  Copyright © 2019 Joshua Wynter. All rights reserved.
//

import Foundation

print("The Guardian of Catherine")
print()
sleep(2)
print("Princess Catherine has been kidnapped by the Lord of all things evil - or LATE for short - and taken to his cursed tower by his minions. Late has been banished by Catherine’s father, King Max Power, for plotting to take his crown. Now Late has Catherine and he will not let her go until he is made king and brought back from exile. As her new Guardian you must set out on a  journey to save her.")

print("Player Are you up for the task? (Yes or No)")
var playTask1 = readLine()!

repeat{
    print("Please enter your name to play")
    var playerName = readLine() ?? "Gaurdian"
    
    print("You leave the Palace. The king says \"God speed young Guardian.\" As you step out of the Palace and begin your journey, you come across traveling merchant.")
    
    sleep(2)
    
    print("Do you greet the Merchant or Do you walk by?")
    
    sleep(2)
    
    print("""
        A) I’m off to save the Princess
        B) None of your business
        C) I’m auditioning for America’s Got Talent
          """)
    
    
    
} while playTask1 == "Yes"


