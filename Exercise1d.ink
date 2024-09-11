/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR tired = -1 // 0 well rested, 1 a little tired, 2 barely keeping eyes open




-> seashore

== seashore ==
You are sitting on the beach. 

It's { advance_time() }

{ advance_tired() }

{Woo! Feelin' good! It hasn't gotten boring yet.|Sigh... there isn't much to do around here, is there? Feeling a little bored?|Dude, you gotta find something to do or else you might actually go insane.}


+ [Stroll down the beach] -> beach2
* { time == 2 } [Go for a swim] -> swim
-> DONE

== beach2 ==
This is further down the beach.

It's { advance_time() }

{ advance_tired() }

* { time == 1 } [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells... oooohhh prettyyyyyy.....
-> beach2

== swim ==
You hop in the water. It's not too cold but not necessarily warm, and it definitely isn't fun to get in your eyes, considering it's saltwater.
{time}
{time != 2 : ->END}

{time == 2 :
    Though it's dark, with the help of the moonlight you can see something in the water...
    +[Go towards the mystery in the water] -> silly_guy
    +[RUN !!!!!!!!!!] -> seashore
}

 == silly_guy ==
 You were quite scared at first, but it turns out the mystery in the water was a friendly little manta ray!! He just wants to say hi and get some pets :3
 + [Hell yeah I'll pet lil bro] -> pets
 + [I'm a little too scared to pet him sorry] -> swim
 
 == pets ==
 Yahoo !! Yippie !! The manta ray does a little spin in the water because he is so happy, then swims off.
 + [Go back to shore] -> seashore

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "morning! Look directly into the sun, it'll make your eyes do a cool thing where you can't see anymore."
        
        - time == 1:
            ~ return "noon. We chillin'"
        
        - time == 2:
            ~ return "night... a little scary !!! There's no nightlights outside..."
    
    }
    
    
        
    ~ return time
    
    == function advance_tired ==

    ~ tired = tired + 1
    
    {
        - tired > 2:
            ~ tired = 0
    }    
    
    {    
        - tired == 0:
            ~ return "You're feeling well-rested and ready to go."
        
        - tired == 1:
            ~ return "You're starting to feel how long you've been awake, but you can definitely keep going."
        
        - tired == 2:
            ~ return "Your eyes are red, and you have a really bad case of RBF right now, because you are just so, sooooooo tired."
    
    }
    
    
        
    ~ return tired
    
