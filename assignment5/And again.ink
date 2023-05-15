VAR time = 0
VAR mistakes = 0
VAR golden_coin = false
VAR chosen_vault = 0
VAR training_step = 0
VAR info = 0
Your name is Alex. You are a high level government official. You have access to high level technology and have many trusted people around you. Unfortunately, you ran into an unfortunate situation. Your vault, which holds on to most of your valuable possessions, was robbed. The robbers broke into the vault, stole or damaged most of your valuable possessions, and left. While a team is tracking them down, you realize you may be able to take things into your own hands. Since you are a lead developer on some very experimental technology, you have access to many restricted areas. Recently, your lab has been testing some temporary time travel, with the ability to create checkpoints in time that can be revisited. While the technology is still very new, you believe that this could be an alternate solution to your problem. If you can sneak into the bank before the robbers show up and grab some of the money, you would be able to survive while figuring out the rest of the issues. In order to do this, you have assembled a team of your most trusted colleagues. Your plan is to steal the time travel device, and use it to heist the bank of your items. Unfortunately, you have never used the device before. In order to make sure it functions, you need to run some preliminary tests. Luckily, you know of some secret facilities. You stock them with your own men, and get ready for your training. Before this, you make an attempt to get as much information as you can on the device you will be using. -> info_section

=== info_section
*   What is this device?
~info++
    The device is called the Temporal Relocator. It is used to temporarily relocate you in time. -> info_section
*   How does it work?
~info++
    The device creates a temporal rift which allows you to continue, but then revert back to the rift if things go wrong. Unfortunately, in order to create a new rift you must close a previous one. -> info_section
*   Will I be safe?
~info++
    Theoretically yes. You are only in danger if you die instantly. If you are on the verge of death, you can use the button to revert to a condition where you are not in danger.  -> info_section
*   Why not just show up when they rob the place?
~info++
    As mentioned in the safety section, risk is a factor here. Assuming the robbers were armed, if they were to find you there it would be very likely that something goes wrong. Luckily, you are going before anything dangerous happens. -> info_section
*{info == 4}[Begin Training] -> training_1
    
=== training_1 ===
Your first training exercise began with simple device usage. You began by using the device in real time to figure out how to use it. The instructions provided told you that there are two buttons. One creates a checkpoint in time and the other allows you to return to it. Your first exercise was to attempt to sneak past a set of guards.
*   [Begin exercise 1] -> exercise_1

=== exercise_1 ===
You start at the end of a hallway. In front of you is a two way intersection.
*   [Check both sides]
    You walk up to the end of the hallway. As you peak your head out to look left, you see nothing. When you turn to look right, a guard rounds the corner. He shouts and starts running towards you.
    * * [Press the green button] -> exercise_1
+   [Go left]
    You go left. You make it to the next corner and round it. As you walk forward you come to a four way intersection. The hallway in front of you looks safe, but you are unsure about the intersecting hallways.
    + + [Sprint across]
        You dash across the hallway. Luckily, nobody on either side notices you. You continue forward. Once again, you come to a 4 way intersection. You see what looks like a doorway in front of you.
        * * * [Go forward]
            You dash across the hallway again. Once again, you are able to slip past the hallways without being spotted. You walk up to the door, and it opens. You have successfully completed your first training exercise.
            * * * * [Back to the facility] -> pre_mission
        * * * [Go left]
            You run left. The only way you can go from here is left. You round the corner and are immediately spotted by a few guards.
            * * * * [Press the green button] -> exercise_1
        * * * [Go right]
            You run right. You reach a dead end. You turn around and go back to the main hallway.
            * * * * [Go right]
            You turn right. You walk up to the door, and it opens. You have successfully completed your first training exercise.
            * * * * * [Back to the facility] -> pre_mission
            * * * * [Go straight]
            You run forward. The only way you can go from here is left. You round the corner and are immediately spotted by a few guards.
            * * * * * [Press the green button] -> exercise_1
    * * [Go right]
    You dash right. You can hear guards shouting behind you.
    * * * [Keep running]
        You keep sprinting. You reach a corner and turn left. Unfortunately, there are guards here too. 
        * * * * [Press the green button] -> exercise_1
    * * * [Press the green button] -> exercise_1
    * * [Go left]
    You turn left. As you approach the corner you hear guards approaching. There is no cover on either side of you.
    * * * [Press the green button] -> exercise_1
*   [Go right]
    You run to the end of the hallway and go right. As you reach the end of the hallway and round the corner you run into two armed guards.
    * * [Press the green button] -> exercise_1
    
=== pre_mission ===
Once you completed your first set of training, you return to the facility. Unfortunately, one of your officials finds you and notifies you that there is word that the device you are using has been stolen. While you were planning on doing more training exercises, now is not the time. You scramble to the briefing room.
In the briefing room, you go over your mission. There is a vault, holding most of your possessions, at the National Treasury. You are to enter the building, as you have done so many times, and talk to the receptionist. From there, you will be able to enter the vault if you please. You will enter the vault, grab as much as you can, and exit. Once you exit, you will return to the position you started in. Then, the time rift can end. Unfortunately, during preliminary testing you noticed some minor memory loss during the teleportations. Hopefully it isn't amplified when you go back in time. Are you ready for your mission?
*   [Yes]
    You talk with your follow officers, and get set up for your mission. You lay down in the bed, and wait for it to begin.
    * * [Wake up] -> awake
*   [No]
    While you may not be ready, you realize that now is the only time. Reluctantly, you lay down and get ready for your mission.
    * * [Wake up] -> awake
=== awake ===
As conciousness slowly returns to you, you find yourself laying on the ground in a dimly lit alleyway. The smell is quite horrid, but the throbbing headache makes it hard for you to move. Fighting through the pain, you struggle to prop yourself upwards against the wall. As you move into an upright position, you notice something slide off of your chest and hit the ground. It looks like a remote control of some sort, with a piece of paper attached to it. You reach down and pick up the device. You flip over the piece of paper to reveal some kind of note.
*   [Read the note]
    The note reads as follows:
    "Hello, Alex. If you are reading this then you are currently outside of the National Treasury. The time transfer worked correctly, and it is up to you to get as much money out as you can. If you can get out, come back to this location and we will bring you back. This device is the Temporal Relocator. The red button will allow you to create a checkpoint location, and the green one will allow you to relocate to these checkpoints. Once you set a new checkpoint, you cannot go back to previous ones. Also, please be careful. We believe that the US government may be trying to track you, and the device gives off temporal residue that may be traceable. Please only use it if you absolutely have to. Check the trash pile behind you, there is a wallet and some other important items stashed for you. Good luck with your mission."
* * [Grab Supplies]
    You reach into the pile behind you, digging deep until your hand strikes a briefcase. You pull the briefcase out of the trash and open it up. Inside you find a wallet containing a bank card, as well as an ID and some money. You take the ID out and inspect it.
    Name: Alexander Robinson
    Date of Birth: 03/27/1992
    You slip the wallet into your pocket. The only other thing in the case is a small golden coin. You pick it up and put it in your pocket with the wallet. On further inspection, you notice a small pouch within the briefcase. It looks like a hiding spot. You pick the briefcase up, stand up, and walk out of the alleyway.
* * * [Walk up to the Treasury]
    You walk up the large marble steps until you reach the front door. As you are walking up you take note of the multiple armed guards standing outside. Eventually you reach the front door.
* * * * [Open the door] -> loop_1
=== loop_1 ===
{mistakes == 0: As you walk in the front door, you create your first checkpoint by reaching into your jacket pocket and bumping the red button. In front of you lies a checkpoint, with metal detectors, an x-ray machine for scanning bags, and multiple armed guards.}
{mistakes >= 1: You walk in the front door. In front of you lies a checkpoint, with mental detectors, an x-ray machine for scanning bags, and multiple armed guards.}
*   [Walk through the detectors]
    As you walk through the detectors, the alarm goes off.
    * * [Make an excuse]
    "I'm sorry, I forgot to take off my belt."
    The guards pull you aside, and use their metal detector rods to scan your person. As they scan up and down, the metal detector pings around your jacket pocket. They reach into it, and pull out the Temporal Relocator.
    "Excuse me sir, what is this?"
    * * * [Make an excuse]
    "It's something from my work. I must have forgot about it. It looks like it's still on. Can you press that green button for me? I'll reclaim it on my way out but I don't want it to run out of battery."
    The man looks a little confused, but picks it up and presses the green button.
    ~mistakes++
    ~time++
    -> loop_1
    * * * [Lunge for the green button]
    You lunge foward, reaching towards the green button. The guard recoils, and tries to pull the item away. Luckily, you are fast enough to barely reach it and hit it.
    ~mistakes++
    ~time++
    -> loop_1
    * * [Press the green button]
    ~mistakes++
    ~time++
    -> loop_1
*{mistakes >= 1}[Put the device in the basket]
    You take the device out of your jacket pocket and place it in the basket. You walk through the metal detector. The man on the x-ray machine stops you, and pulls you aside.
    "What is this?" he says, pointing to the Temporal Relocator. 
    "This?" you say, picking the item up and holding it in your hand. "It's just something I use for work."
    He looks at you, a little confused. "What does it do?"
    You look back at him. "Check this out," you say, as you reach for the device.
    * *  [Press the green button]
        ~mistakes++
        ~time++
        -> loop_1
*{mistakes >= 1}[Put the device in the briefcase pouch]
    You sit down on the bench next to the checkpoint. You open up your briefcase and secretly slip the device out of your pocket and into the pouch. You seal it tightly and walk up to the detectors. You set your briefcase down on the belt and walk through the detectors. No alarms sound. You pick up your briefcase on the other side of security and walk away from the security checkpoint.
    ~mistakes = 0
    -> loop_2

=== loop_2 ===
{mistakes == 0: You walk into the lounge area. You set your briefcase down, unzip the hidden pocket and move the Temporal Relocator back into your jacket pocket. You close the briefcase, and press the red button before getting up and walking towards the counter. The lady at the counter gestures you forward.}
{mistakes >= 1: You get up from the lounge area and walk towards the counter. The lady at the counter gestures you forward.}
"Good evening sir," she says. "What are you doing here today?"
+   ["I need to make a visit to my vault."]
    Alright sir. May I please see your ID?
    + + ["Is that really necessary?"]
        "Yes, it is sir. We check everyones information to make sure your items are safe."
        + + + [Hand her your ID]
        You fumble around with your ID for a second, but eventually get it out of your wallet and hand it to her. She picks it up and looks at it.
        "Alright sir, I need you to confirm some details for me. Can you give me your first and last name?"
        * * * * [Alex Robinson] -> wrong_answer
        * * * * [Alexander Patterson] -> wrong_answer
        * * * * [Alex Patterson] -> wrong_answer
        * * * * [Alexander Robinson]
            "Alright sir, now I just need you to confirm your date of birth."
            * * * * * [4/27/1992] -> wrong_answer
            * * * * * [3/27/1992]
                "Thank you very much sir. Please have a seat in the lounge and someone will be over shortly to escort you to your vault."
                You collect your ID and walk back to the lounge. You take a seat on one of the chairs and wait for someone to approach you. -> waiting_room
            * * * * * [4/26/1992] -> wrong_answer
            * * * * * [3/26/1992] -> wrong_answer
        + + + [Play it off]
            "I know. I was just making sure you guys were still as good as they say," you say, taking out your ID and extending it towards her.
            She looks at you with confusion, then takes your ID.
            "Alright sir, I need you to confirm some details for me. Can you give me your first and last name?"
        * * * * [Alex Robinson] -> wrong_answer
        * * * * [Alexander Patterson] -> wrong_answer
        * * * * [Alex Patterson] -> wrong_answer
        * * * * [Alexander Robinson]
            "Alright sir, now I just need you to confirm your date of birth."
            * * * * * [4/27/1992] -> wrong_answer
            * * * * * [3/27/1992]
                "Thank you very much sir. Please have a seat in the lounge and someone will be over shortly to escort you to your vault."
                You collect your ID and walk back to the lounge. You take a seat on one of the chairs and wait for someone to approach you. -> waiting_room
            * * * * * [4/26/1992] -> wrong_answer
            * * * * * [3/26/1992] -> wrong_answer
    + + [Hand her your ID]
    You reach into your pocket and pull out your wallet. You take out the ID card, making sure to scan the details quickly before handing it to her. She picks it up and looks at it.
    "Alright sir, I need you to confirm some details for me. Can you give me your first and last name?"
        * * * [Alex Robinson] -> wrong_answer
        * * * [Alexander Robinson]
            "Alright sir, now I just need you to confirm your date of birth."
            * * * * [3/27/1992]
                "Thank you very much sir. Please have a seat in the lounge and someone will be over shortly to escort you to your vault."
                You collect your ID and walk back to the lounge. You take a seat on one of the chairs and wait for someone to approach you. -> waiting_room
            * * * * [3/26/1992] -> wrong_answer
+   ["I need to check my balance."]
    "Okay sir," she says. "Please give me your ID and card."
    + + [Give her your cards]
    You take out your wallet and hand her your ID and bank card. She grabs your ID, checks it with your person, and then addresses you.
    "Alright sir, now I just need you to confirm your date of birth."
    * * * [4/27/1992] -> wrong_answer
    * * * [3/27/1992]
    "Thank you very much sir. Your balance in your account currently will display on the screen here."
    You look down and watch as the number on the screen counts upwards. You are shocked as the display keeps going and going until the number finally stops.
    $7,042,784,382.
    You cannot believe your eyes.
    "Sir, is everything alright?" the lady asks.
    "Yes," you respond.
    "Will that be all?" she asks.
    * * * *  [Press the green button]
    ~mistakes++
    ~time++
    -> loop_2
    * * * *  [Give her the golden coin.]
    ~golden_coin = true
        She looks at you for a second, then nods and takes the coin.
        "Please go back to the lounge, someone will be over to take care of you soon. You grab your cards back and walk over to the lounge. You grab a seat on one of the lounge seats and wait patiently. -> waiting_room
    * * * [4/26/1992] -> wrong_answer
    * * * [3/26/1992] -> wrong_answer

=== wrong_answer ===
"Alright, one second sir," she says.
+   [Press the green button]
~mistakes++
~time++
-> loop_2
+   [Wait]
    As you watch her through the glass, you notice some reflections in the glass approaching you from behind. You reach your hand into your jacket.
    + + [Press the green button]
    ~mistakes++
    ~time++
    -> loop_2

=== waiting_room ===
{golden_coin == false: As you sit in the waiting room, you begin to wonder. What is the purpose of this golden coin? You can't remember why you have it, or if there was anything important to use it for. Can you think of anything?}
{golden_coin == true: As you sit in the waiting room, you wonder why she accepted the coin. At this point, you aren't sure what the next step is. Eventually, a man in a suit approaches you and gestures for you to follow him.}
*{golden_coin == true}[Follow the man] -> hallway
*{golden_coin == false}[Give the receptionist the coin]
~golden_coin = true
    You decide to give the coin to the receptionist. She nods at you and gestures back to the chairs you were sitting on.
    * * [Sit back down]
    You sit back down in the chair. Eventually, a man approaches you. He gestures for you to follow him forward.
    * * * [Follow the man] -> hallway
*{golden_coin == false}[Save the coin for later]
    You decide to hold onto the coin. Eventually, a man approaches you. He gestures for you to follow him forward.
    * * [Follow the man] -> hallway



=== hallway ===
~mistakes = 0
As you follow the man into the hallway, you realize what you are dealing with. The hallway is softly lit. The marble floors are polished. As you approach the vault, you notice the reinforced steel doors. Equipped with state of the art biometric scanners, these doors are extremely secure. Advanced surveillance equipment and mition sensors silently track any unauthorized movement. Security cameras monitor every angle with precision. As you walk, you notice a set of laser beams on the ground. They monitor your every step. The door that you finally reach is state of the art. It is full of many different checks, which the man who you followed begins dealing with. It starts with an eye scan, then a fingerprint, followed by a long alphanumeric passcode and a maze puzzle. Finally, the last lock is completed and the man puts his hand on the door.
"In order to guarantee security, we can not leave you in here for too long. I will give you 5 minutes to grab what you need. Once the time is up, I will come back."
*   [Enter the vault] ->loop_3
=== loop_3 ===
{mistakes == 0: As you walk into the vault, you take a look around. The vault consists of 6 doors perfectly split into segments. Each of the 5 vault doors has a display above it. The door opposite from you has your name displayed. All of the other displays are empty. The room is obviously temperature controlled, and the design is very sleek. Dark colors, bright lights, subtle details.}
You walk forward to your vault door, making sure to press the red button. You scan your face, and give your fingerprint. The big doors begin to open. As the door turns, you are faced with a wall piled high with storage units. Each one looks fairly secure, and you must use your fingerprint to open each one. Sadly, you know your time here is limited. You only have 5 minutes to grab whatever you can think of. You stare at the wall. Each one is numbered, from 1 all the way to 150. You know you must be fast, so you select a small group and begin grabbing.
*   [1-10]
    You begin opening the segments. It seems like all of these contain cash. You begin unloading from the vaults, taking stacks and stacks and piling them into your briefcase. You know your time is up shortly.
    ~chosen_vault = 1
    -> contemplation
*   [11-20]
    You begin opening the segments. Every single one is full of gold bars. You begin unloading from the vaults, taking the bars and piling them into your briefcase. You know you need to leave soon.
    ~chosen_vault = 2
    -> contemplation
*   [21-30]
    You begin opening the segments. Each one is full of different pieces of jewelry. You begin unloading from the vaults, taking as much jewelry as you can and piling it into your briefcase. Time is starting to run out.
    ~chosen_vault = 3
    -> contemplation
*   [31-40]
    You begin opening the segments. Each one is full of different coins. They all look like collectors items. You begin unloading from the vaults, filling your briefcase to the brim with coins. You are aware that your time is limited.
    ~chosen_vault = 4
    -> contemplation
*   [41-50]
    You begin opening the segments. Each one is filled with unique pieces of art. You lay them carefully into your briefcase. You know you must act fast.
    ~chosen_vault = 5
    ->contemplation
*   [51-60]
    You begin opening the segments. Each one has objects that look like they belong in a museum. You do your best to fit them all into your briefcase. You must move quickly.
    ~chosen_vault = 6
    -> contemplation
*   [61-70]
    You begin opening the segments. Each one has some classified documents. You browse them for a bit, before grabbing all the files you can and stuffing them into your briefcase. You know time is of the essence.
    ~chosen_vault = 7
    -> contemplation
*   [71-80]
    You begin opening the segments. Each one is filled with a different type of rare earth metals. You grab the bars and stack them up in your briefcase. You must hurry.
    ~chosen_vault = 8
    -> contemplation
*   [81-90]
    You begin opening the segments. Each one is full of watches. You grab as many as you can and stuff them into your briefcase. You are moving rapidly.
    ~chosen_vault = 9
    -> contemplation
*   [91-100]
    You begin opening the segments. Each one is full of flash drives and other storage devices. You grab all of them and throw them into your briefcase. You are in a rush.
    ~chosen_vault = 10
    -> contemplation
*   [101-110]
    You begin opening the segments. Each one has different antique decorations. You grab as many as your briefcase can fit. You are careful not to break any.
    ~chosen_vault = 11
    -> contemplation
*   [111-120]
    You begin opening the segments. Each one is full of first edition books and rare historical readings. You pile them into your briefcase. You are racing.
    ~chosen_vault = 12
    -> contemplation
*   [121-130]
    You begin opening the segments. Each one is filled to the brim with gemstones. You grab them all and sweep them into your briefcase. You spill a few but that doesn't matter.
    ~chosen_vault = 13
    -> contemplation
*   [131-140]
    You begin opening the segments. Each one has extremely detailed blueprints of government buildings. You take as many as you can grab. You are trying to go as fast as possible.
    ~chosen_vault = 14
    -> contemplation
*   [141-150]
    You begin opening the segments. Each one contains different kinds of valuable contracts. You pile them high. You are moving quickly.
    ~chosen_vault = 15
    -> contemplation

=== contemplation ===
You stare at the items as they sit in your briefcase. Are you satisfied with this outcome? Or do you try again?
*   [Leave with what you have] -> leave
+{mistakes < 10}[Press the green button]
~time++
~mistakes++
-> loop_3

=== leave ===
You close your vault, being careful to put everything back where it was. You walk back to the door you came in, and push the button. After standing there for a moment, the door begins to open. The man who escorted you to the room is on the other side.
"Thank you for stopping by today sir," he says. You walk back into the lobby.
{golden_coin == true: "Would you like to leave through the secret exit?"}
*{golden_coin == true}[Secret exit]
    The man walks you to the doors on the other side of the room.
    -> secret_exit
*   [Leave through security] -> security
*{golden_coin == false}[Give the golden coin to the lady at the front]
    You walk up to the lady at the counter and give her the coin. She looks at you and nods at the man, and he takes you to the door on the other side of the room.
    -> secret_exit
=== secret_exit ===
You walk through the doors to reveal a long hallway similar to the one on the other side. The man walks over to one of the details on the wall and pulls on one of them. The floor drops down, revealing a secret tunnel. You walk down into the tunnel, making your way through it. It is walkable, but fairly dark. You follow the small bar of light on the ceiling, as it leads you outside of the treasury. Eventually you reach the end of the tunnel, which leads to a one way doorway. You open the door, and end up back in the alleyway you started in. The door closes behind you. You walk back to the spot you woke up in and lay down.
*   [Return home] -> home

=== security ===
You walk back towards the security checkpoint. You remember the disaster that happened previously. Sweating, you walk up to security. You put your briefcase through the exit scanner, and walk through the metal detectors. The detector rings, and the guard looks at you.
*   [Explain]
    "Look guys, I just came through here. It was obviously something from my vault, and I would appreciate keeping the contents private."
    The guards look confused at first, then nod and let you walk out. You return to the alleyway and sit back down where you left off.
    * * [Return home] -> home

=== home ===
{mistakes < 10: As you regain conciousness you realize you are in a hospital bed. There are many wires connected to you. The room is empty, and you can see what looks to be some kind of facility in the distance. Eventually a doctor walks into the room and sees you are awake. He disconnects the wires from you, and helps you up. You walk with him into what looks like a command room. You walk up to the man who seems like he's in charge.}
{mistakes < 10 && chosen_vault == 1: "Great work Alex!," he said. "You managed to heist $ worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 2: "Great work Alex!," he said. "You managed to heist $19,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 3: "Great work Alex!," he said. "You managed to heist $500,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 4: "Great work Alex!," he said. "You managed to heist $170,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 5: "Great work Alex!," he said. "You managed to heist $7,000,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 6: "Great work Alex!," he said."You managed to heist $70,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 7: "Great work Alex!," he said. "You managed to heist $1,250,000,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 8: "Great work Alex!," he said. "You managed to heist $750,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 9: "Great work Alex!," he said. "You managed to heist $5,400,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 10: "Great work Alex!," he said. "You managed to heist $900,000,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 11: "Great work Alex!," he said. "You managed to heist $80,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 12: "Great work Alex!," he said. "You managed to heist $2,800,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 13: "Great work Alex!," he said. "You managed to heist $900,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 14: "Great work Alex!," he said. "You managed to heist $3,000,000,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes < 10 && chosen_vault == 15: "Great work Alex!," he said. "You managed to heist $2,000,000,000 worth of items from that bank. Not only that, but you made minimal mistakes and the government wasn't able to track us. Good job." ->END}
{mistakes >= 10: You wake up at gunpoint. As it turns out, the US government was able to track your location. They went to the facility you were being held in and captured you as well as your leaders. Unfortunately, there is nothing else you can do. -> END}