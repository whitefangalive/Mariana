switch (obj_settings.timesEnteredSub) {
	case 1:
	say(["Welcome to the SS Sub Shop or the SSSS for short", "God I hate it here.", "Anyway you wanna buy something?"]);
	break;
	
	case 2:
	say(splitText("Yeah the current was my fault sorry, but hey if you buy the booster pack you can probably like boost through it or something. I wouldn't know its not like I set that current up for the sole purpose of luring people straight to the shop to sell them the only way through it or anything."));
	break;
	
	case 3:
	say(splitText("Hey, do I know you from somewhere? Were you at the 15th annual fish greasing competition?"));
	break;

	case 4:
	say(splitText("You know, there's a rumor going around that if you swim deep enough, you'll find a whole city down there. But who needs cities when you can have my wares?"));
	break;

	case 5:
	say(splitText("You look like you could use an upgrade. How about this brand-new air tank? Guaranteed to keep you breathing for at least 5 hours or your money back. That's right any money you give me, I will give right back!"));
	break;

	case 6:
	say(splitText("I hear the mermaids down here are a real catch. Literally. They'll lure you in with their beautiful voices, and before you know it, you're trapped in a net. But don't worry, I've got just the thing to help you escape - my patented Mermaid Repellent. Buy one bottle, get one free!"));
	break;

	case 7:
	say(splitText("You know what they say - the sea is full of mysteries. Like, for example, why does everything taste like salt down here?"));
	break;

	case 8:
	say(splitText("You know, I've been thinking - why bother swimming when you can just fly? Introducing the latest invention from the SS Sub Shop - the Underwater Helicopter! Just strap it onto your back and you'll be soaring through the ocean in no time. Disclaimer: may cause extreme dizziness, nausea, and occasional spontaneous combustion."));
	break;

	case 9:
	say(splitText("if you're looking for some answers, I might have just what you need. How about this ancient map that allegedly leads to a lost treasure? Or this mysterious key that no one knows what it unlocks?"));
	break;

	case 10:
	say(splitText("You know, sometimes I wonder what it would be like to live on land again. Do you ever miss it? The fresh air, the sunlight, the lack of fish nibbling at your toes... But then again, if I lived on land, I'd have drop the word sea from my full title \"Sea Cowboy Merchant\". Speaking of which, how about this rare pearl I just found? It's said to bring good luck to anyone who owns it. Don't believe me? Why?"));
	break;

	case 11:
	say(splitText("You know what they say - there's always a bigger fish. But who needs a bigger fish when you can have a smaller fish? That's right, introducing the Pocket Fish - the perfect pet for any underwater adventurer. Just be sure not to put it in the same pocket as your keys or you might have a surprise on your hands. Buy one now and get a free fishbowl!"));
	break;
	case 10.5:
		var rand = irandom_range(0, 1);
		switch (rand) {
			case 0:
				say(splitText("If you're having trouble seeing in the dark supposedly theres a luminous jellyfish around here somewhere."));
			break;
			case 1:
				say(splitText("Theres a jellyfish cave somewhere above my submarine I just know it. I always smell their jelly. It's close but not too close."));
			break;
		}
	break;
	
	

	case 12:
	say(splitText("Have you heard the rumors about the nuclear waste dumping in this trench? Some say it was the governments of the world who did it, trying to dispose of their radioactive waste where nobody would find it. Others say it was the work of some rogue corporation, trying to cover up their dirty deeds. Either way, I say its a gift! that stuff goes great with cheese dip."));
	break;

	case 13:
	say(splitText("I inherited this shop from my father, or at least I think he was my father. It's hard to tell for sure when all I found was a skeleton in a submarine. But I like to think he'd be proud of me, selling submarine sandwiches to all the brave explorers who venture down here. "));
	break;

	case 14:
	say(splitText("Nobody knows how far down this trench goes. Tons of people have gone down and never returned. Some say the trench goes all the way to the center of the Earth, but that's just crazy talk, right?"));
	break;
	case 13.5:
		var rand = irandom_range(0, 1);
		switch (rand) {
			case 0:
				say(splitText("I miss the old gods, powering my technology used to be so easy when they were in charge. Now with the new gods I need all this thorium. Luckily there's plenty of crystals hidden in dark areas."));
			break;
			case 1:
				say(splitText("Whatever you do, don’t go into the dark cave west of here. It’s super dangerous and full of monsters. It is not my secret thorium mining grounds. If you want to trade thorium, bring it from elsewhere."));
			break;
		}
	break;
	
	case 15:
	say(splitText("You know, there's a reason why they call the beast down here Yerino. It's because it'll rip yer insides right out with those razor sharp teeth. I once saw a whole crew of divers go up against it and let's just say there wasn't much left of them after. I think its cause they made one crucial mistake. The Yerino is a deep sea creature, they challenged it on its own turf deep underwater. If you want to fight the Yerino, fight it as close to the surface as possible."));
	break;

	case 16:
	say(splitText("I can't shake the feeling that you're up to something, stranger. I've seen a lot of shady characters come through here, and most of them end up causing trouble one way or another. But hey, as long as you keep buying my sandwiches, I won't ask too many questions."));
	break;

	case 17:
	say(splitText("If more people make it down as far as I have, I'm definitely going to take this sub deeper. There's got to be something down there, something big. I can feel it in my bones. And if anyone's going to find it, it's going to be me, Muro, the greatest underwater merchant who ever lived!"));
	break;
	
	case 18:
	say(splitText("Hey there, adventurer. You look like you could use some night vision goggles. These babies will help you see in the dark... or they would if they weren't broken. But hey, I'll give you a good price on them anyways. You never know when you might need them."));
	break;

	case 19:
	say(splitText("New gods? Eh, those bastards, with all the things they've done to the people I shudder to even call them gods."));
	break;
	case 21:
	say(splitText("Oh you're back, speaking of things I don't like, have you ever heard of a sea cucumber? Disgusting little things if you ask me. And don't even get me started on seaweed, it gets everywhere! But you know what I do love? Thorium, my submarine just can't get enough of the stuff."));
	break;
	case 22:
	say(splitText("So, you wanna know more about life at sea? Well, let me tell you, it's not all sunshine and rainbows. There was this one time where I was stuck on a dinghy for three days with nothing but a pack of saltines and a rusty harmonica. I tell you what, I never wanna hear the tune 'Oh Susanna' again."));
	break;
	case 23:
	say(splitText("Have you ever seen a seahorse? Cutest things you'll ever lay your eyes on. And those little guys can really move when they want to. They're like the race cars of the sea. Speaking of speed, have you considered buying my booster pack? You never know when you might need it."));
	break;
	case 24:
	say(splitText("You know, sometimes I wonder if the new gods even know how to swim. They're always up in their fancy sky palaces, never getting their feet wet. But me, I've always been a hands-on kind of guy. That's how I ended up with this shop, you know? Inherited it from my father or some such. Although, it could have been his evil twin brother for all I know."));
	break;
	case 25:
	say(splitText("I'm a sea cowboy, Ya know, like a regular cowboy. Except I catch seacows on a seahorse. I guess this is more of my side gig."));
	break;
	case 26:
	say(splitText("You know what they say, 'one person's trash is another person's treasure.' And boy, do I have some treasures for you! Like this broken compass, for example. It may not work, but it'll look great on your mantlepiece. And it probably has some use I just don't know about."));
	break;
	case 27:
	say(splitText("You know, I can't help but notice that you look awfully suspicious. People down here are always hiding from something on the surface. Ha! Just kidding, don't mind me. Anyway, can I interest you in this slightly used but still functional breathing apparatus?"));
	break;
	case 29:
	say(splitText("Would you like to buy a map of the trench? I promise it's not outdated by more than a century."));
	break;

	case 30:
	say(splitText("Psst, hey you. Yeah, you. I don't want to alarm you or anything, but I think someone might be following us. I mean, it could just be the Yerino or some other sea monster, but you never know. Anyway, while we're here, would you like to buy a lucky seashell? It's said to bring good fortune, or at least that's what the guy who sold it to me said."));
	break;
	case 31:
	say(splitText("I know you aren't what you say you are, but can I ask you a question? Do you think my submarine looks cool? I put a lot of work into it, you know. I even added some extra rust to make it look more authentic."));
	break;
	case 32:
	say(splitText("You sure do like talking to me, sheash im running out of things to talk about, uh you wanna buy my cowboy card collection?"));
	break;
	default:
	say(splitText("welcome back I guess."));
	break;
}

destination = Room1;
destinX = x;
destinY = y;

curLocation = room;

annoyance = 0;


