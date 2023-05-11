-> hub
=== hub ===
~ progress ++
*   {progress == 0}[The Beginning] -> the_interview
*   {progress == 1}[The Middle] -> work_interaction
*   {progress == 2}[The End] -> stressful
// Knots for S1
=== the_interview ===
Hello! It's nice to meet you. My name is David and I will be interviewing you today.
What is your name again?
*   [Ethan]
~ name = "Ethan"
    Right now I am going to ask you some questions about your personality. Pick whichever answer fits you best.
    * *   [Begin Now] -> question_1
*   [Logan]
~ name = "Logan"
    Right now I am going to ask you some questions about your personality. Pick whichever answer fits you best.
    * *   [Begin Now] -> question_1
*   [Emma]
~ name = "Emma"
    Right now I am going to ask you some questions about your personality. Pick whichever answer fits you best.
    * *   [Begin Now] -> question_1
*   [Sophia]
~ name = "Sophia"
    Right now I am going to ask you some questions about your personality. Pick whichever answer fits you best.
    * *   [Begin Now] -> question_1
*   [Gray]
~ name = "Gray"
    Right now I am going to ask you some questions about your personality. Pick whichever answer fits you best.
    * *   [Begin Now] -> question_1
*   [Hale]
~ name = "Hale"
    Right now I am going to ask you some questions about your personality. Pick whichever answer fits you best.
    * *   [Begin Now] -> question_1

=== question_1 ===
Would you consider yourself an introvert or an extrovert?
*  [introvert]
~ desc1 = "introvert"
-> question_2
*   [extrovert]
~ desc1 = "extrovert"
~ score++
-> question_2

=== question_2 ===
I see you're an {desc1}. Good to know.
Next, I want to know if you're an optimist or a pessimist.
*   [optimist]
~ desc2 = "optimist"
~ score++
-> question_3_o
*   [pessimist]
~ desc2 = "pessimist"
-> question_3_p

=== question_3_o ===
An optimist! Wonderful!
{score == 1: You're doing a good job.}
{score == 2: You're doing a great job!}
Would you consider yourself an early bird or a night owl?
*   [early bird]
~ desc3 = "early bird"
~ score++
-> question_4
*   [night owl]
~ desc3 = "night owl"
-> question_4

=== question_3_p ===
A pessimist? Shocking.
{score == 1: You're doing a good job.}
{score == 0: You should really consider your answers.}
Would you consider yourself an early bird or a night owl?
*   [early bird]
~ desc3 = "early bird"
~ score++
-> question_4
*   [night owl]
~ desc3 = "night owl"
->END
=== question_4 ===
Interesting.
Alright, time for your final question.
Will you do whatever it takes for the company?
*   [yes]
~ score++
~ desc4 = "dedicated"
-> interview_conclusion
*   [no]
~ desc4 = "not dedicated"
-> interview_conclusion

=== interview_conclusion ===
Thank you for your time.
Here is a recap of your answers.
1. {desc1}
2. {desc2}
3. {desc3}
4.  {desc4}
{score == 0: You did terrible during this interview. Sadly, you were the only one who applied. You start tomorrow.}
{score == 1: You aren't the best fit for this role, but you know the boss so he's giving you a pass. See you tomorrow.}
{score == 2: It was nice talking to you. After some consideration on my end, I think we can give you the go ahead. See you tomorrow bright and early!}
{score == 3: Thank you for your time. I am excited to say you will be joining us starting tomorrow!}
{score == 4: Wow, you got everything right. I guess there's no need to complete the rest of these interviews. See you tomorrow!}
*   [start work] -> start_work

=== start_work ===
{desc3 == "early bird": You wake up at 5:45, even though your alarm isn't set for another hour. You head to the gym. You finish your workout, come home, and hop in the shower to get ready for your day.}
{desc3 == "night owl": You wake up at 8:45, 15 minutes before work starts. You roll out of bed, throw on whatever clothes you can find around you, and head to work.}
* [Go To Work] -> hub

-> END
// Knots for S2
=== work_interaction ===
You have been working at the same company for almost 3 months now.
{desc1 == "introvert": Although you haven't made many friends, you enjoy the silence while you work.}
{desc1 == "extrovert": Since starting, you met almost everyone in the office and made some close friends.}
{desc2 == "optimist": While you came into the job with high hopes, things have not really been going your way.}
{desc2 == "pessimist": While you were skeptical at first, you are starting to warm up to the job.}
Since you are approaching 3 months at the company, the boss called you in for another meeting.
*   [Go to meeting] -> meeting

=== meeting ===
{desc1 == "extrovert": Hey, nice to see you {name}! Thanks for taking the time out of your day to come talk to me.}
{desc1 == "introvert": Hey, it's {name} right? I feel like I never really got the chance to meet you.}
We're using this meeting as a check-in with you just to see how you've been feeling about the job. I have the transcript from your first meeting.
{desc2 == "pessimist": It says here you are a pessimistic person. Would you say you have enjoyed the job so far?}
{desc2 == "optimist": I'm glad to see you're an optimist! Have you been enjoying the job so far?}
*   [yes]
~ score++
~ enjoyment = "yes"
    Glad to hear it! We try our hardest to create a positive work experience for all employees.
    Work has been pretty chill recently, but we're expecting to deal with some more intense work soon. Do you perform well under pressure?
    * * [yes]
    ~ pressure = "yes"
    ~ score++
        That's great to here. I think we can conclude this interview now.
        * * *   [leave office] -> hub
    * * [no]
    ~ pressure = "no"
        That's unfortunate. I think that's all for today. Thank you for your time.
        * * *   [leave office] -> hub
*   [no]
~ enjoyment = "no"
    I'm sorry to hear that. Is there anything we can do to improve your experience?
    * * {desc1 == "extrovert"}    [yes]
        Alright, I will leave you some time at the end of this conversation to write down some feedback for us.
        Lets continue. Do you perform well under pressure?
        * * * [yes]
        ~ pressure = "yes"
        ~ score++
            That's great news. Thank you for your time, feel free to leave some feedback on this notecard and I will see you later!
            * * * *  [leave office] -> hub
        * * * [no]
        ~ pressure = "no"
            Alright, well if you need anything from me just let me know. Thank you for your time
            * * * *  [leave office] -> hub
    * * [no]
        I'm sorry to hear that. Do you feel like you perform well under prssure?
        * * * [yes]
        ~ pressure = "yes"
        ~ score++
            Wonderful. Thank you for your time I will see you again some time in the future.
            * * * *  [leave office] -> hub
        * * * [no]
        ~ pressure = "no"
            Quite unfortunate. Feel free to reach out if you are feeling overwhelmed. That will conclude our check-in.
            * * * *  [leave office] -> hub
// Knots for S3
=== stressful ===
A few weeks passed, and things started to pick up at work.
{desc1 == "extrovert": Since you've gathered so many friends around the office, you've managed to gain a few friends to help you with the increasing workload.}
{desc1 == "introvert": Since you neglected your fellow workers, you haven't managed to get to know anyone that well. As your work load increases, you have been forced to work extra hard since nobody else wants to help you.}
{enjoyment == "yes" && pressure == "yes": Luckily for you, you enjoy your work and know how to handle pressure, so the increase in workload has been fine.}
{enjoyment == "yes" && pressure == "no": While you do enjoy your work, the added pressure has started to make it a lot more difficult.}
{enjoyment == "no" && pressure == "yes": While the work is not enjoyable for you, you handle the extra pressure very well.}
{enjoyment == "no" && pressure == "no": The lack of enjoyment and increase in pressure have caused your workdays to be extremely unenjoyable. You sit and contemplate quitting.}
You stare at the work on your desk, thinking about doing it. What do you do?
*   [stamp documents] -> stamp
*   [adventure] -> adventure
*  {enjoyment == "no" && pressure == "no"}[quit] -> quitting

=== stamp ===
You grab the stamp, stamp it on the ink pad, and bring it over to the document. {One! You feel good about getting something done. You slide that paper out of the way to reveal the next one.|Two! Another successful stamp. On to the next.|Three! Another one down. You are starting to get tired|Four! You slide the paper out of the way to reveal the last one.|Five! Finally done, you slide the last piece of paper onto the pile.| But wait, there is no document left. You set the stamp down.}
~ stamp_count++
+	[stamp another]	 		-> stamp
*   {stamp_count >= 5}[go home] -> go_home
*   {stamp_count <= 4}[save the rest for later] -> end_day

=== go_home ===
Satisfied with your work, you pick up your stuff and walk out. Today was a successful day at work. -> END
=== end_day ===
You set the stamp down, pack up, and leave for the day. Maybe one day you will finish all that work. -> END

=== adventure ===
You get up from your desk and find yourself walking around the office. You eventually end up in a new area of the office you've never seen before.
{desc4 == "dedicated": Although the new area around you seems interesting, you decide to turn around in hopes of finding yoru way back to the office.}
{desc4 == "not dedicated" && score >= 3:You continue walking into this new area, unsure of what lies ahead. Eventually you find yourself in front of a long bright hallway.}
{desc4 == "not dedicated" && score < 3:You continue walking into this new area, unsure of what lies ahead. Eventually you find yourself in front of a long dark hallway.}
*   [go back] -> go_back
*   {desc4 == "not dedicated"}[walk down the hallway] -> go_forward
=== go_back ===
You retrace your steps and eventually end up back at your desk. You continue with the work you left behind. -> END
=== go_forward ===
{score >= 3: You walk down the hallway, as the light slowly begins to surround you. Eventually, you can't see anything around you. -> END}
{score <  3: You walk down the hallway, as the darkness slowly surrounds you. Eventually, you cannot see a single thing. -> END}
=== quitting ===
How do you quit?
*   {desc1 == "introvert"}[leave a note on his desk and walk out]
    You walk into his office, drop a note on his desk, and walk out. -> END
*   {desc1 == "extrovert"}[go to bosses office]
    You walk into his office and sit down. You explain how work has been stressing you out and you need to leave. He understands, shakes your hand, and lets you walk away. -> END
*   [just leave]
    You get up from your chair, grab your bag and your personal belongings, and walk out the front door. -> END

// Vars for The Beginning
VAR progress = -1
VAR name = ""
VAR desc1 = ""
VAR desc2 = ""
VAR desc3 = ""
VAR desc4 = ""
VAR score = 0
// Vars for The Middle
VAR enjoyment = ""
VAR pressure = ""
VAR stamp_count = 0
// Vars for the end
