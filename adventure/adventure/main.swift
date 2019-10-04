//
//  main.swift
//  adventure
//
//  Created by Cameron Rivera on 9/30/19.
//  Copyright © 2019 Cameron Rivera. All rights reserved.
//

/*
 Title: A Different Kind of Adventure
 
 Conceptually, the idea is to go through an ordinary day. However, the focus will be less on what you do when you are alone, and more on how you choose to interact with the people you come into contact with and how they affect your mood / energy levels. Below is a list of ideas for who we will be interacting with:
 
    - Nosy Neighbor
    - Best friend
    - Parent
    - Stranger
    - Some manner of store employee
    - Pet
    - Sibling
    - Co-worker
    - Partner
    - One's self
    
 
 Interactions can take the form of phone calls, texts, video chats, in person exchanges, and body language exchanges/implied feelings.
 
 Toying with the idea of keeping track of exhaustion, or energy reserves and making a win condition be something like getting home without thoroughly exhausting yourself. We'll make it so that if your exhaustion reaches too high a level, you will be forceably returned home without being able to accomplish any other task. How deftly, or clumsily you navigate the exchanges will result in how much energy is expended. Although your choices will be considered in energy exhaustion, they will not be able to negate the expenditure of energy. EVERY INTERACTION WITH ANOTHER HUMAN BEING WILL RESULT IN LOST ENERGY. Your choices will affect HOW MUCH energy is expendid. For the sake of simplicity, any given exchange will expend a variable amount of energy, and a variable amount of energy minimum given how well you handle the situation. Again, for the sake of simplicity, we'll limit our interactions to 10, and make it so that each interaction allows you three different choices to make. The end result of each exchange can be a value that will be subtracted from your total energy.
 
 Ten Functions, each handling a specific encounter.
 
 If you energy depletes to 0, you will be robbed of your ability to make good choices.
 
 Must tweak values. Should only be allowed to deplete to 0 before lunch.
 */

import Foundation

var playOrNotPlay = false // Used to determine whether the user wants to play
var energy: Int = 100 // An arbitrary value that currently means nothing
var encounterCounter = 0 // Used in the print function that displays remaining energy

func theFirstEncounter() -> Int {
    let preamble = """
        It is morning. You wake up feeling disoriented, but not unrested. You begin to wonder what happened to the alarm you set for this morning. You reach for your phone and discover that you woke up four minutes before your alarm is set go off. You take a minute to consider going to back to sleep, but decide that four minutes will change absolutely nothing. You toggle off your alarm and head to the restroom. After doing all of the things you usually do in the restroom, you have a breakfast of your favourite cereal with a friuit of your choice. After washing your dishes, you begin to head out for the day when you hear a low whine. You look down and notice your dog staring up at you with eyes that say, "If you do not walk me now, you can expect to come home to a soiled floor." You don't speak dog, but that is what you imagine her eyes to be saying. You stop for a minute to think it over. What do you do:
            a. Walk her.
            b. Do nothing.
    """
    let walkedDog = """
        You move over to your dog and begin to attach the leash. She gets excited and twirls around in a circle attempting to bite her tail. She stops after one rotation and begins to lick your face. You...
            a. Allow her to lick your face, and show her some affection.
            b. Pull away, annoyed with her for trying to lick you with her dog breath.
    """
    
    let notWalkedDog = """
    You sigh thinking about the mess that you will have to clean up when you get home, but accept that you are already running late and cannot afford to walk her.
"""
    
    let lickedFace = """
    You notice your dog seems to be enjoying the attention. She begins to wag her tail and shake her leg. You continue to show her affection for a moment longer before heading out for a walk.
"""
    let pullAway = """
    You pull away. Not sure how to handle the smell of dog breath, and the slober that accompanies it. Your dog looks wounded for a moment, and then regains her joyful mood as you guide her toward the door.
"""
    print(preamble)
    print()
    
    var responses = (response1: "", response2: "")
    
    repeat{
        print("Select either choice a, or choice b: ", terminator: "")
        responses.0 = String(readLine() ?? " ")
        responses.0 = responses.0.lowercased()
    }while(responses.0 != "a" && responses.0 != "b")
    
    // Chose to Walk Dog
    if(responses.0 == "a"){

        print(walkedDog)
        repeat{
            print("Select either choice a, or choice b: ", terminator: "")
            responses.1 = String(readLine() ?? " ")
            responses.1 = responses.1.lowercased()
        }while(responses.1 != "a" && responses.1 != "b")
            // ENDPOINT: Showed your dog some affection
            if(responses.1 == "a"){
                print(lickedFace)
                print()
            } else { // ENDPOINT: Pulled away when your dog tried to show affection
                print(pullAway)
                print()
            }
        
    } else { // ENDPOINT: Chose not to walk dog.
        print(notWalkedDog)
        print()

    }
        switch responses{
        case ("a","a"):
            return 10
        case ("a","b"):
            return 15
        default:
            return 20
        }
}

func encounterTwo(number mood: Int) -> Int {
    var responses = ("","")
    
    let preamble1 =  """
    You walk out of your apartment closing the door behind you. You turn around to lock up the place when you hear some say "Good morning!". Without looking back you know it is your neighbor Alvin from across the way. You don't want to be rude, but you also know that whenever he accosts you at this early hour he always wants to gossip. You...
        a. Engage him in gossip.
        b. Politely return his greeting, but keep walking.
        c. Do nothing.
"""
    
    let gossiped = """
        He begins to tell you about the shooting that happened just down the block. He says that it was gang related and that someone passed away. As he continues telling the story, he looks more and more fascinated by the drama of it all. As if it were a scene in a movie that he were watching, and not real life. When he finishes his story, he stops talking. You....
            a. Tell him how disgusted you are with his gossiping ways and remind him that people shooting one another is not a source of entertainment before continuing on your way.
            b. Remark how terrible an incident that was and continue on your way.
"""
    let disgusted = """
    Alvin appears unphased by your remark. In fact, it would seem that he has moved on to spread the news to someone else. You cannot help but feel that he will continue to accost you in the mornings despite what you just said. You shrug your shoulders, and console yourself with the fact that you tried to bring about a change. After a moment, you shake it off and head out into the world.
"""
    let empathize = """
    Alvin agrees that it is a shame such a thing happened. You hear the words, but somehow you find yourself unable to feel that he truly believes them. There is a brief silence before you excuse yourself. From behind, you hear foot steps from the floor above followed by Alvin's voice saying "Good morning!" once again. It would seem that Alvin had moved on to his next victim. As you make your way into the world, you wonder if that guy will ever change.
"""
    let politeGreeting = """
        You politely return his greeting, but continue walking, giving him no time to engage you in neither small talk or gossip. You think about how well you played that and congratulate yourself for dodging that bullet.
"""
    let didNothingGossip = """
        Alvin takes your silence as an invitation to gossip.
"""
    let preamble2 = """
    You grab your dog and head out of the door. The weather is sunny and extremely hot, even at this early hour in the morning. You cannot even begin to imagine how hot it is going to get later in the day. A woman's voice snaps you out of your thoughts about how terrible the weather is. You do not recognize her. She begins to make kissing noises at your dog, and speak to her as if she were a puppy despite the fact that your dog is 7 years old, and no longer a puppy. Your dog seems uninterested, you.....
        a. Engage the woman in conversation.
        b. Politely explain to her that your dog is no longer a puppy and ask her to cease her ridiculous kissing noises.
        c. Do nothing.
"""
    let didNothing = """
    The woman begins talking to you, forcing you to engage her.
"""
    let kissingNoises = """
    You try to maintain an even mood while you politely request that the woman stop speaking to her as if she were a puppy. You tell her that your dog is 7 years old, and would no longer appreciate kissing noises, and whatever sort of babble it is that coming out of her mouth. Though you don't say it, you wonder if that sort of thing has ever been effective in garnering favour with any animal. The woman seems offended, and walks away. You shrug your shoulders, bring your dog back inside, and head out for work.
"""
    let conversed = """
    You begin to talk to the woman. You tell her that your dog is a beagle and is 7 years old. The woman tells you that she has always wanted to get a dog of her own, but never got around to getting one. She reaches over to pet your dog. In that moment, you look down and you see your dog looking up at you, pleading for help. You...
        a. Tell her your dog is wary of new people, and ask her to refrain from petting her.
        b. Allow the woman to pet your dog.
"""
    let madeExcuse = """
    You pull back a bit with your dog. Afterward, you explain that your dog was a rescue and her previous owner abused her, making her reluctant to be pet by strangers. The woman readily understand and remarks how good a person you are for adopting a "difficult" dog. You nod, though you see nothing "difficult" with your dog's behaviour. After a short silence, you politely excuse yourself, bring your dog back inside, and head out to work.
"""
    let allowedPet = """
    The woman reaches over to pet your dog. You make no effort to tell her about your dog's discomfort at being pet by strangers. You dog begins to grow as the woman's hand nears her. The woman seems oblivious to the warning signs and continues to reach her hand out to pet your dog. Your dog bites her. The woman yelps, and pulls her hand back. She walks away, angry at you for not doing more to prevent that from happening. You shrug your shoulders, bring your dog back inside, and head out for work.
"""
    
    if(mood == 80){
        
        print(preamble1)
        print()
        
        repeat{
            print("Select either choice a, choice b, or choice c: ", terminator: "")
            responses.0 = String(readLine() ?? " ")
            responses.0 = responses.0.lowercased()
        }while(responses.0 != "a" && responses.0 != "b" && responses.0 != "c")
        
        if(responses.0 == "a"){
            // Engaged Alvin in Gossip
            print(gossiped)
            print()
            repeat{
                print("Select either choice a, or choice b: ", terminator: "")
                responses.1 = String(readLine() ?? " ")
                responses.1 = responses.1.lowercased()
            }while(responses.1 != "a" && responses.1 != "b")
            // ENDPOINT: Disgusted with Alvin's ways
            if(responses.1 == "a"){
                print(disgusted)
                print()
                return 15
            } else{ // ENDPOINT: Made a remark about how bad the shooting was.
                print(empathize)
                print()
                return 15
            }
        } else if(responses.0 == "b") {
            // Brushed Alvin off with a curt greeting
            print(politeGreeting)
            print()
            return 5
        } else {
            // Did nothing when Alvin approached you.
            print(didNothingGossip)
            print(gossiped)
            print()
            repeat{
                print("Select either choice a, or choice b: ", terminator: "")
                responses.1 = String(readLine() ?? " ")
                responses.1 = responses.1.lowercased()
            }while(responses.1 != "a" && responses.1 != "b")
            // ENDPOINT Disgusted with Alvin's ways.
            if(responses.1 == "a"){
                print(disgusted)
                print()
                return 15
            } else{ // ENDPOINT: Made a remark about how bad the shooting was.
                print(empathize)
                print()
                return 15
            }
        }
        
    } else{
        print(preamble2)
        print()
        
        repeat{
            print("Select either choice a, choice b, or choice c: ", terminator: "")
            responses.0 = String(readLine() ?? " ")
            responses.0 = responses.0.lowercased()
        }while(responses.0 != "a" && responses.0 != "b" && responses.0 != "c")
        
        if(responses.0 == "a"){
            // Engaged the Woman in conversation
            print(conversed)
            print()
            repeat{
                print("Select either choice a, or choice b: ", terminator: "")
                responses.1 = String(readLine() ?? " ")
                responses.1 = responses.1.lowercased()
            }while(responses.1 != "a" && responses.1 != "b")
            // ENDPOINT: Explained your dog to the woman
            if(responses.1 == "a"){
                print(madeExcuse)
                print()
                return 15
            } else{ // ENDPOINT: Let woman pet your dog
                print(allowedPet)
                print()
                return 20
            }
        } else if(responses.0 == "b") {
            // ENDPOINT: Requested that the woman cease her kissing noises
            print(kissingNoises)
            print()
            return 5
        } else {
            // Did nothing when the woman approached you.
            print(didNothing)
            print(conversed)
            print()
            repeat{
                print("Select either choice a, or choice b: ", terminator: "")
                responses.1 = String(readLine() ?? " ")
                responses.1 = responses.1.lowercased()
            }while(responses.1 != "a" && responses.1 != "b")
            // ENDPOINT Explained your dog to the woman.
            if(responses.1 == "a"){
                print(madeExcuse)
                print()
                return 15
            } else{ // ENDPOINT: Let woman pet your dog
                print(allowedPet)
                print()
                return 20
            }
        }
    }
    
}
func encounterThree() -> Int {
    var responses = ("","")
    
    let preamble = """
    You make your way to the train station. Fortunately for you, you live near multiple train stations that can get you to work, which means that you can take any one of them. The closest one has always been more convenient for coming home, but for going to work, there is no better choice than taking the 5 minute walk to the next closest train station. As you are walking you notice a man staring at you. For a moment you think you recognize him. It seems like he wants to talk to you. As you near him, you....
        a. Stop and hear him out.
        b. Keep walking, pretend that you don't notice him.
"""
    let stopped = """
    You stop in front of the man, and pull your ear buds out. He begins to tell you a story, about how down on his luck he is. He proceeds to go on about how if he had just a little money, he could eat and feed his family this week. At this point, you realize that you have seen this man before. He asked you for money last month, but the story was different. He didn't have a family then. After considering his story for a moment you...
        a. Give him whatever change you have in your pocket so that he'll leave you alone.
        b. Walk away. Kicking yourself for stopping in the first place.
        c. Let him know about some non profit organizations that help out homeless people.
"""
    let keptWalking = """
    You decide to keep walking. You realize as you pass him that the man was someone who asked you for money last month. He went on and on about how he didn't have any money and couldn't get a job because of his criminal record. At the time you thought only part of that seemed like the truth, but also, you really didn't see how that was your problem to begin with. You gave him a dollar. He seemed less than grateful for it, almost as if you had given him nothing at all. You resolved never to interact with such people again.
"""
    let gaveChange = """
    Before the man even finishes his story, you pull out all of the change you have in your pocket and shove it in his hand. You continue on toward the train station not even bothering to look back toward the man and gauge his reaction to the money.
"""
    let walkAway = """
    You can't believe that you did not recognize the man earlier. Annoyed with yourself for stopping and giving this man any more attention than he deserves, you walk away without even bothering to allow him to finish his story.
"""
    let helped = """
    After allowing the man to finish his tale, you give him a business card with the name of a non profit organization that you once volunteered for. You tell them about the organization, who they are, and what services they can provide. He looks at the business card dubiously before unashamedly tossing it on the floor. You pause a moment, a bit nonplussed by his actions. You shrug and continue on toward the train station.
"""
    print(preamble)
    print()
    
    repeat{
        print("Select either option a, or option b: ", terminator: "")
        responses.0 = String(readLine() ?? "")
        responses.0 = responses.0.lowercased()
    }while (responses.0 != "a" && responses.0 != "b")
    
    // Player stopped to talk to the man.
    if(responses.0 == "a"){
        print(stopped)
        print()
        
        repeat {
        print("Select either option a, option b, or option c: ", terminator: "")
        responses.1 = String(readLine() ?? "")
        responses.1 = responses.1.lowercased()
            
        }while(responses.1 != "a" && responses.1 != "b" && responses.1 != "c")
        switch responses{
            // ENDPOINT: Gave change
        case ("a","a"):
            print(gaveChange)
            print()
            return 15
            //ENDPOINT: Walked away
        case ("a","b"):
            print(walkAway)
            print()
            return 15
            //ENDPOINT: Tried to help
        default:
            print(helped)
            print()
            return 20
        }
    }else {
        //ENDPOINT: Did not stop to engage the man.
        print(keptWalking)
        print()
        return 5
    }
}
// Someone on the subway
func encounterFour() -> Int {
    var responses = ("","")
    var timesWaited = 0
    
    let preamble = """
    You are on your phone waiting for the train at the subway platform. It is rush hour, and you live at a station that is usually crowded with people at this time of day, dispite the fact that the previous train just left 4 minutes ago. The next train is scheduled to arrive in 1 minute. When it arrives it appears to be jam packed. You roll your eyes with feigned disbelief. The people surrounding you begin to crowd the entrances. After some people push their way out of the train, the people around you begin to enter. One person merely gets in and stops by the door. You...
        a. Attempt to push your way into the train.
        b. Wait for the next train.
"""
    let pushedIn = """
    You push your way into the train, annoyed with your fellow commuters for thier terrible train edicate. You make for the center of the car where more space is available. You pull out your phone again in order to idle away the minutes until you reach your destination.
"""
    let waited = """
    The thought of being somewhere in the center of a jam packed train doesn't exactly appeal to you, and you are not exactly running late this particular morning. You decide to wait for the next train, which is scheduled to arrive in 5 minutes. After 5 minutes, you notice that the platform is just as crowded, if not more so than before. When the train arrives, it is packed, yet again. You...
        a. Attempt to push your way into the train.
        b. Wait for the next train.
"""
    let exceededWait = """
    After waiting for the past three trains to go by, you can no longer afford to wait for the next one. You push your way into the next train that arrives, annoyed with your fellow commuters for thier terrible train edicate. You make for the center of the car where there is more space available. You pull out your phone again in order to idle away the minutes until you reach your destination.
"""
    print(preamble)
    print()
    
    repeat{
        print("Please choose either choice a, or choice b: ", terminator: "")
        responses.0 = String(readLine() ?? "")
        responses.0 = responses.0.lowercased()
    }while(responses.0 != "a" && responses.0 != "b")
    
    if(responses.0 == "a"){
        // ENDPOINT: Pushed into the train and made your way to work
        print(pushedIn)
        print()
        return 10
    } else {
        // Waited for the train
        repeat{
            timesWaited += 1
            print(waited)
            print()
            repeat{
                print("Please choose either choice a, or choice b: ", terminator: "")
                responses.1 = String(readLine() ?? "")
                responses.1 = responses.1.lowercased()
            }while(responses.1 != "a" && responses.1 != "b")
        } while(responses.0 == "b" && responses.1 == "b" && timesWaited < 3)
        // ENDPOINT: Waited far too long.
        if(timesWaited == 3){
            print(exceededWait)
            print()
            return 25
        } else {
            print(pushedIn)
            print()
            return 10 + (timesWaited * 5)
        }
    }
}
// Co worker
func encounterFive() -> Int {
    var responses = ("","")
    let preamble = """
    After pushing your way out of still crowded train, and walking a short distance, you finally arrive at work. After taking a few minutes to settle in, you being working. Things proceed smoothly for a bit until you get stuck on a problem. After forty minutes or so of racking your brain trying to find a solution, your co-worker Esther walks by. She notices you having trouble and offers to help. Feeling a bit iritated by the problem, you...
        a. Take a minute to calm down and ask for her help.
        b. Tell her to mind her own business and go away.
"""
    let askForHelp = """
    You take a moment to calm down and ask Esther for her help. Esther is more than willing to oblige. She takes a seat and asks what the problem is. You go into the problem at length explaining what it is that has you stuck. She thinks it over for a moment and provides you with what she believes to be a solution. You work with Esther's solution and find that it works perfectly. She gets up to go. Do you.....
        a. Tell her that you could have solved the issue without her.
        b. Thank her, and tell her that you owe her one.
"""
    let goAway = """
    Under the stress of being unable to find a solution to your problem, you lash out at Esther. You tell her to go away. Adding that nobody asked for her help. Esther seems offended. She shouts an obscenity at you as she stomps away.
"""
    let withoutHer = """
    Esther is visibly offended. She mutters the word, "dick", as she walks away.
"""
    let thankedHer = """
    You thank Esther for her time and assistance, making sure to include that without her, solving the problem would have been near impossible. You tell her that you owe her one, and offer to treat her to lunch the next day. She smiles and tells you that she will take you up on that offer.
"""
        print(preamble)
        print()
    repeat{
        print("Please choose either option a or option b: ", terminator: "")
        responses.0 = String(readLine() ?? "")
        responses.0 = responses.0.lowercased()
    }while(responses.0 != "a" && responses.0 != "b")
    
    // Asked Esther for Help
    if(responses.0 == "a") {
        print(askForHelp)
        print()
        
        repeat {
            print("Please choose either choice a, or choice b: ", terminator: "")
            responses.1 = String(readLine() ?? "")
            responses.1 = responses.1.lowercased()
        } while(responses.1 != "a" && responses.1 != "b")
        
        // ENDPOINT: Told Esther you could have solved the problem without her help
        if(responses.1 == "a"){
            print(withoutHer)
            print()
            return 25
        } else { // ENDPOINT: Thanked Esther for her time and help
            print(thankedHer)
            print()
            return 15
        }
        
    } else {
        print(goAway)
        print()
        return 15
    }

}
// Lunch + Best Friend (Energy Gain)
func encounterSix() -> Int {
    var responses = ("","")
    let preamble = """
    It nears 1 o'clock and you feel as if your exhaustion is palpable. Secretly you have been looking forward to lunch. A chance to refuel is always welcome. You send your best friend Nathan a text and ask him if he has plans for lunch. He reponds rather quickly, telling you that he can do lunch, but can only spare 20 minutes. You usually take a full hour for lunch. Your inital reaction is disappointment. You usually eat lunch with Nathan every day, it is unusual for you both to not spend the full lunch hour together. You....
        a. Tell Nathan to forget about lunch for the day. You don't mind eating alone today.
        b. Take him up on his offer, not worrying about the other stuff.
        c. Ask him why he cannot spare more time.
"""
    let fuggetAboutIt = """
    You send Nathan a text telling him not to worry about it. You would rather not go through the trouble of meeting up with him only to have to leave as soon as you arrived. He responds with a text saying that he understands. He lets you know that he will be available every other day of the week for lunch. You shove your phone into your pocket and go out to enjoy a solitary lunch in a nearby park.
"""
    let takeUpOffer = """
    You take Nathan up on his offer. You both agree to meet at a nearby restaurant with food that you both enjoy. He has yet to show up by the time you arrive. You send Nathan a text letting him know that you have arrived, and asking him if he would like his usual to eat. Nathan responds with an apology. He goes on to say that he will likely not be able to make it. You....
        a. Tell him it is no big deal.
        b. Give him an annoyed response.
        c. Don't respond.
"""
    let askAbout = """
    You send Nathan a text asking him what is going on. You note that it is peculiar he could not spare more than 20 minutes. Nathan responds with a short text promising you the details later, but assuring you that there is nothing to worry about. The offer still exists. Do you....
        a. Tell him to forget about lunch.
        b. Take him up on his lunch offer.
"""
    let noBigDeal = """
    You respond with a short text letting Nathan know that it is not a big deal. After all, it was not the first time that someone cancelled on you, and it sure would not be the last. You shrug it off and order a meal to eat on your own. Everytime you come to this restaurant, you eat only vegetarian options, because that is what he can eat. Since he cancelled on you, you figure now would be a good time to try one of their meat dishes. You order a meat dish and eat it on your own. It tastes better than you thought it would.
"""
    let annoyedResponse = """
    You send Nathan a frustrated text. You let him know that he would have done well to simply tell you he could not make it instead of causing you to come all of the way out to this restaurant and then ditching you. You add angry emojis to really sell the fact that you are pissed off. Despite him usually being quick to respond, Nathan seems to make no attempt to respond at all. In your frustrated mood, you order what you usually order and consume a solitary lunch at the restaurant.
"""
    let noResponse = """
    You are disappointed in Nathan, but rather than say something you don't mean, you simply do not respond. However, in the back of your mind, you still feel annoyed about what the events that just occurred. No longer desiring to be in this restaurant any more, you explore the nearby eateries and discover a place that, according to yelp, is famous for its tofu dishes. You decide to try it out. As you take a seat and eat your food alone, you think, "This food is just okay."
"""
    
    print(preamble)
    print()
    
    repeat{
        print("Please select option a, option b, or option c: ", terminator: "")
        responses.0 = String(readLine() ?? "")
        responses.0 = responses.0.lowercased()
    }while (responses.0 != "a" && responses.0 != "b" && responses.0 != "c")
    
    switch responses {
        // ENDPOINT: Told Nathan not to mind about lunch
        case ("a",_):
            print(fuggetAboutIt)
            print()
            return -45
        // Took Nathan up on his offer for 20 minute lunch
        case ("b",_):
            print(takeUpOffer)
            print()
            
            repeat{
                print("Please select option a, option b, or option c: ", terminator: "")
                responses.1 = String(readLine() ?? "")
                responses.1 = responses.1.lowercased()
            }while (responses.1 != "a" && responses.1 != "b" && responses.1 != "c")
            
            //ENDPOINT: Had a nice meat dish on your own
            if(responses.1 == "a"){
                print(noBigDeal)
                print()
                return -50
            } else if( responses.1 == "b") { //ENDPOINT: Gave an annoyed response
                print(annoyedResponse)
                print()
                return -30
            } else {
                print(noResponse)
                print()
                return -30
            }
        // Asked Nathan what the matter was.
        default:
            print(askAbout)
            print()
            repeat{
                print("Please select option a, option b, or option c: ", terminator: "")
                responses.0 = String(readLine() ?? "")
                responses.0 = responses.0.lowercased()
            }while (responses.0 != "a" && responses.0 != "b" && responses.0 != "c")
            // ENDPOINT: Told Nathan you would have lunch alone.
            if(responses.0 == "a") {
                print(fuggetAboutIt)
                print()
                return -45
            
            }else{ // Took Nathan up on his offer for 20 minute lunch
                print(takeUpOffer)
                print()
                
                repeat{
                    print("Please select option a, option b, or option c: ", terminator: "")
                    responses.1 = String(readLine() ?? "")
                    responses.1 = responses.1.lowercased()
                }while (responses.1 != "a" && responses.1 != "b" && responses.1 != "c")
                
                //ENDPOINT: Had a nice meat dish on your own
                if(responses.1 == "a"){
                    print(noBigDeal)
                    print()
                    return -50
                } else if( responses.1 == "b") { //ENDPOINT: Gave an annoyed response
                    print(annoyedResponse)
                    print()
                    return -30
                } else { // ENDPOINT: Gave Nathan no response
                    print(noResponse)
                    print()
                    return -30
                }
        }
    }
}
// Sibling Text
func encounterSeven() -> Int {
    var responses = ("","")
    let preamble = """
    You finally finish out the work day. Feeling relieved at the fact that the day is over, and you take a moment to yourself. After which, you gather your things and go. Not yet ready to head home, you decide to go to the movies. Since it is not a planned activity, you have no idea what is playing at the moment. When you get to the theatre, you notice that there are a couple of films that look good. You decide to see...
        a. A horror movie.
        b. An action movie.
"""
    let horror = """
    You aren't normally a fan of horror movies, because they tend to be overly predictable, but you decide to see the newest horror film showing. You have a few minutes before the screening, so you look up some reviews to see if you can gather what it is about. From what you can glean, the movie is about some foolish individuals who decides to resurrect some ancient evil that nobody believes in anymore because it is the modern era. Except, surprising no one, the thing is real and actually shows up. It seems like such a familiar plot. You decide to play a game. Based on what you know about horror movies, you decide to make a prediction about the ending of the film. Your prediction is:
        a. The heroes defeat the evil, and though incredibly traumatized, live happily ever after.
        b. It'll seem like the heroes win in the end, but in the last scene you'll see the remaining survivor get killed by the evil thing.
"""
    let action = """
    You definitely are not an action movie fan since CG became a thing. You cannot remember the last time you saw a movie in which the action did not look completely fake despite the best efforts of the cast. You look up the film in order to get an idea of what it is about. From what you understand, the movie is about a mafia boss who threatens the citizens of a small village, and the young woman who vows vengence on them for killing her parents. It is not exactly an orginal plot, but it could be interesting. You decide to play a game. Based on what you know about action movies, you decide to predict what will happen at the end of the film. Your prediction is:
        a. The young woman gets the vegence she sought for so long, but is left feeling empty afterward.
        b. The young woman is killed in the last scene without getting the vengence she desired.
"""
    let heroesWin = """
    Before the movie begins, you write down your prediction and put it in your pocket so that you cannot later lie about predicting the ending correctly if you turn out to be wrong. The movie begins and the first thing that catchs your attention is how loud it is. Somehow you feel that horror movies are 90% dependent upon their audience being able to hear. You wonder if watching a horror movie with your TV muted would produce the same impact. You doubt it. As the movie comes to a close, it seems like the good guys have locked away the evil for good. As you go to leave the movie theatre, you notice there is an extra scene. In it, one of the survivors is going about his business when the evil being drags him underwater and drowns him. Not consistent with your prediction, but still an enjoyable film, you suppose.
"""
    let redHerring = """
    Before the movie begins, you write down your prediction and put it in your pocket so that you cannot later lie about predicting the ending correctly if you turn out to be wrong. The movie begins and the first thing that catchs your attention is how loud it is. Somehow you feel that horror movies are 90% dependent upon their audience being able to hear. You wonder if watching a horror movie with your TV muted would produce the same impact. You doubt it. As the movie comes to a close, it seems like the good guys have locked away the evil for good. As you go to leave the movie theatre, you notice there is an extra scene. In it, one of the survivors is going about his business when the evil being drags him underwater and drowns him. While most of the movie goers in the theatre with you are shocked by this turn of events, you have seen enough horror movies to have called that ending from a mile away. You feel proud of yourself for having predicted the ending correctly, but you also feel a bit sad at how predictable movies are.
"""
    let hollow = """
    Before the movie begins, you write down your prediction and put it in your pocket so that you cannot later lie about predicting the ending correctly if you turn out to be wrong. The movie begins. It starts off pretty standard for a movie of this type. A woman's parents are killed by the mafia controlling the town, the woman swears vengence against the mafia boss, etc. When the action begins, you feel lost. Somehow the scene is edited in such a way that the camera is always moving at a rapid pace creating this illusion that something interesting is happening, or at least that is what you would imagine. The effect is lost on you though. You are unable to follow the action and as a result are entirely lost. When the movie reaches its conclusion, the woman is forced into a position where she is forced to die with the mafia boss, or save his life. So strong is her hatred for the mafia boss that she decides to give up her own life just so that he would end up dead. The ending was a complete surprise, but overall not a movie you would watch again.
"""
   
    print(preamble)
    print()
    
    repeat{
        print("Please select option a, or option b: ", terminator: "")
        responses.0 = String(readLine() ?? "")
        responses.0 = responses.0.lowercased()
    }while(responses.0 != "a" && responses.0 != "b")
   // Chose to watch a horror flick
    if(responses.0 == "a"){
        print(horror)
        print()
        repeat{
            print("Please select option a, or option b: ", terminator: "")
            responses.1 = String(readLine() ?? "")
            responses.1 = responses.1.lowercased()
        }while(responses.1 != "a" && responses.1 != "b")
        
        //Chose to predict the good guys win ending
        if(responses.1 == "a"){
            print(heroesWin)
            print()
            return 10
        } else{ //Chose the misleading ending and was right about it
            print(redHerring)
            print()
            return 5
        }
    } else { //Chose to watch an action film
        print(action)
        print()
        
        repeat{
            print("Please select option a, or option b: ", terminator: "")
            responses.1 = String(readLine() ?? "")
            responses.1 = responses.1.lowercased()
        }while(responses.1 != "a" && responses.1 != "b")
        
        //Chose the hollow victory ending
        if(responses.1 == "a"){
            print(hollow)
            print()
            return 10
        } else{ //Didn't get vengence ending
            print(hollow)
            print()
            return 10
        }
    }
}
// Nephew
func encounterEight() -> Int {
    var responses = ("", -1)
    var correctGuess = false
    let randomInteger = Int.random(in: 1...100)
    var hintArray: [String] = []
    var remainingGuesses = 5
    
    if(randomInteger > 25){
        hintArray.append("It is greater than 25.")
    }else {
        hintArray.append("It is less than 25.")
    }
    
    if(randomInteger > 50){
        hintArray.append("It is greater than 50.")
    }else {
        hintArray.append("It is less than 50.")
    }
    
    if(randomInteger > 75){
        hintArray.append("It is greater than 75.")
    }else {
        hintArray.append("It is less than 75.")
    }
    
    if(randomInteger % 2 == 0){
        hintArray.append("It is even.")
    } else {
        hintArray.append("It is odd.")
    }
    
    if(randomInteger % 10 == 0){
        hintArray.append("It is a multiple of 10.")
    } else {
        hintArray.append("It is not a multiple of 10.")
    }
    
    let preamble = """
    As you make your way home from the movies, you begin to think about your sister Beatrice and your nephew Malachai. It would seem you cannot remember the last time you spoke to them. A quick glance at your phone confirms that it is not too late to make a call to them. You find Beatrice in your contacts and press the call button. She picks up after the fourth ring. You greet her and after some awkward catching up, you ask if Malachai is around. She says that he has 10 minutes until bed time, but can talk until then. Malachai seems excited to speak to you. The last time you spoke to him his favourite game was one that involved guessing his favourite number. You wonder if that is still true. As if reading your mind, Malachai says "Between 1 and 100 guess my favourite number. You get five hints and five guesses."
"""
    let win = """
    You hear an excited noise over the other end of the line. "You guessed it!", Malachai says. You feel proud of yourself for having successfully guessed the number. You feel even more pride when you consider how terrible your previous attempts have been. In the background, you can hear your sister come into the room, and tell Malachai to get ready for bed. You wish him a good night. After which your sister comes on the phone and explains that she has to put him to bed. Before you hang up, you both promise to speak to one another again soon.
"""
    let lose = """
    You hear what you believe to be a triumphant noise on the other end of the line."You couldn't guess it! I win! It was \(randomInteger)", Malachai shouts. You feel more than a bit ashamed of the fact that you have never won this game once. Still, he seems to enjoy it, so you don't feel quite as bad as might feel under different circumstances. In the background, you can hear your sister come into the room, and tell Malachai to get ready for bed. You wish him a good night. After which your sister comes on the phone and explains that she has to put him to bed. Before you hang up, you both promise to speak to one another again soon.
"""
    let incorrect = """
    Nope!
"""
    
    print(preamble)
    print()
    
    while(!hintArray.isEmpty){
        print(hintArray.popLast() ?? "")
    }
    print("No more hints. Now you have to guess.")
    print()
     //Print a message that lets the user know that they have not correctly guessed the answer.
    for _ in 0...4{
        repeat{
            print("Remaining guesses: \(remainingGuesses)")
            print("Guess a number: ", terminator: "")
            responses.1 = Int(readLine() ?? "") ?? -1
        }while(responses.1 == -1 || responses.1 > 100)
        if(responses.1 == randomInteger){
            correctGuess = true
            break
        }
        print(incorrect)
        remainingGuesses -= 1
    }

    if(correctGuess){
        print(win)
        print()
        return 10
    }else{
        print(lose)
        print()
        return 20
    }

}

func theLastEncounter() -> Int {
    var response = ""
    let preamble = """
    When you get back home, you take your dog out for a quick walk after cleaning up any mess she may have made during the day. You eat something light, shower, and then head to bed. As you lay in bed, you begin to think about your day. In thinking about your day, you are overwhelmed with....
        a. Regret for the things you did not do.
        b. Pride in the choices you made.
        c. Exhaustion from amount of interactions you have had.
"""
    let regret = """
    As you think back over the events of the day, your mind seems to hone in on those moments that did not go optimally. You replay those moments in your mind over and over, trying to find the best possible outcome. Once you find those outcomes, you begin to criticize yourself for not being able to reach it sooner. Afterward,you begin to get anxious thinking about tomorrow, and all of the different things that could go wrong. You find it hard to sleep.
"""
    let pride = """
    As you think back over the events of the day, your mind focuses on those moments that went well. You are not oblivious to the things that went wrong, you just choose to focus more on the moments that went well. You congratulate yourself for making the choices you did, and celebrate the moments when things went extremely well. You soon find yourself fast asleep.
"""
    let exhaustion = """
    As you think back over the events of the day, your mind focuses on those moments that took the most energy out of you.  You begin to feel tired, and soon drift off to sleep.
"""
    
    print(preamble)
    print()
    
    repeat{
        print("Please select option a, option b, or option c: ", terminator: "")
        response = String(readLine() ?? "")
        response = response.lowercased()
    }while(response != "a" && response != "b" && response != "c")
    // ENDPOINT: Regret
    if(response == "a"){
        print(regret)
        print()
        return 0
    } else if(response == "b") { //ENDPOINT: Pride
        print(pride)
        print()
        return 0
    } else {// ENDPOINT: Exhaustion
        print(exhaustion)
        print()
        return 0
    }
}
// Energy cannot drop below 0, or arise above 100
func normalize(number mood: Int) -> Int {
    switch mood{
    case ..<0:
        return 0
    case 0...100:
        return mood
    default:
        return 100
    }
}

// You basic title screen.
func intro() -> Bool{
    var playerChoice = ""
    print("Welcome to A \"Different Kind of Adventure\". The concept is quite simple. You will go through an ordinary day in the life of a person. One day will consist of ten different instances. You will be given a set amount of energy to use throughout your day. The game is not about 'winning' or 'losing'. The idea is to explore as many different outcomes as you can, while managing your energy efficiently. The more involved you are with someone, or something, the more energy you'll expend. Currently, there is no penalty for depleting your energy before the day ends. However, you can try to challenge yourself to get through the day with as much energy in your reserve as possible.")
    print()
    sleep(1)
    print("Would you like to play?")
    
    repeat{
        print("Enter 'y' to play, or 'n' to quit: ", terminator: "")
        playerChoice = String(readLine() ?? "")
    } while (playerChoice.lowercased() != "y" && playerChoice.lowercased() != "n")
    
    if(playerChoice == "n"){
        return false
    } else {
        return true
    }
}
// A short ending to wrap the adventure up.
func ending(number result: Int){
    switch result{
    case 0..<30:
        print("You seem to have had some problems navigating the day. You got yourself tangled up in the affairs of others without paying attention to yourself. Try to make sure you are okay before tackling other people's problems.")
    case 30..<60:
        print("You weren't completely oblivious to how exhausted you were, but you still chose to involve yourself with other people. You are very close to finding a good balance between involvement with others and managing your own needs.")
    case 60..<90:
        print("You have found the perfect balance between involvement with others and managing your own needs. Well done.")
    default:
        print("Somehow you made it through the day exhausting almost none of your energy. You are either incredibly efficient at managing your own energy, or you made no effort to involve youself with the people around you. Either way, try getting a bit more involved with other people.")
    }
}
// Switch on this so the output matches st, rd, th ...etc.
func remainingEnergy(number counter: Int, number2 remainingEn: Int) {
    switch counter{
    case 1:
        print("After your \(counter)st encounter, your remaining energy is \(energy).")
    case 2:
        print("After your \(counter)nd encounter, your remaining energy is \(energy).")
    case 3:
        print("After your \(counter)rd encounter, your remaining energy is \(energy).")
    case 4...8:
        print("After your \(counter)th encounter, your remaining energy is \(energy).")
    default:
        print("As you drift off to sleep, your remaining energy is \(energy).")
    }
}

playOrNotPlay = intro()

if playOrNotPlay {
energy -= theFirstEncounter()
energy = normalize(number: energy)
encounterCounter += 1
remainingEnergy(number: encounterCounter, number2: energy)
sleep(1)
energy -= encounterTwo(number: energy)
energy = normalize(number: energy)
encounterCounter += 1
remainingEnergy(number: encounterCounter, number2: energy)
sleep(1)
energy -= encounterThree()
energy = normalize(number: energy)
encounterCounter += 1
remainingEnergy(number: encounterCounter, number2: energy)
sleep(1)
energy -= encounterFour()
energy = normalize(number: energy)
encounterCounter += 1
remainingEnergy(number: encounterCounter, number2: energy)
sleep(1)
energy -= encounterFive()
energy = normalize(number: energy)
encounterCounter += 1
remainingEnergy(number: encounterCounter, number2: energy)
sleep(1)
energy -= encounterSix()
energy = normalize(number: energy)
encounterCounter += 1
remainingEnergy(number: encounterCounter, number2: energy)
sleep(1)
energy -= encounterSeven()
energy = normalize(number: energy)
encounterCounter += 1
remainingEnergy(number: encounterCounter, number2: energy)
sleep(1)
energy -= encounterEight()
energy = normalize(number: energy)
encounterCounter += 1
remainingEnergy(number: encounterCounter, number2: energy)
sleep(1)
energy -= theLastEncounter()
energy = normalize(number: energy)
encounterCounter += 1
remainingEnergy(number: encounterCounter, number2: energy)
sleep(1)
ending(number: energy)
} else {
    print("Goodbye.")
}
