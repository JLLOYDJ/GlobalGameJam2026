function scr_text(_text, _snd_type){
	//setting the sound type
	switch(_snd_type) {
		case "narr":
		voiceSnd1 = snd_narration1;
		voiceSnd2 = snd_narration2;
		break;
		case "f1guest":
		voiceSnd1 = snd_F1guest1;
		voiceSnd2 = snd_F1guest2;
		break;
		case "f2guest":
		voiceSnd1 = snd_F2guest1;
		voiceSnd2 = snd_F2guest2;
		break;
		case "mguest":
		voiceSnd1 = snd_Mguest1;
		voiceSnd2 = snd_Mguest2;
		break;
		case "chef":
		voiceSnd1 = snd_chef1;
		voiceSnd2 = snd_chef2;
		break;
		case "staff":
		voiceSnd1 = snd_staff1;
		voiceSnd2 = snd_staff2;
		break;
		default:
		voiceSnd1 = snd_narration1;
		voiceSnd2 = snd_narration2;
		break;
	}
	//dynamically adds text to the array
	//scr_text("string") so you dont have to worry about array numbers
	text[page_number] = _text;
	page_number++;
}

function scr_options(_option, _link_id) {
	txt_options[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

function scr_game_text(_text_id) {
	
	//most game text passed in here
	switch(_text_id) {

	#region testing
		case "text id":
			scr_text("Output text 1", "chef");
			scr_text("Output text 2", "f1guest");
				scr_options("Option name", "option text id");
			break;
			
		case "interaction test":
			scr_text("You see a red box.", "staff");
				scr_options("Touch it", "touch");
				scr_options("Walk away", "cancel");
			break;
			
		case "touch":
			obj_InteractionTest.image_index = 1;
			scr_text("The box turns green.", "mguest");
			break;
	#endregion
	
	#region beginning and ending
	
	case "intro":
		scr_text("Forests burn, homes erased, future expansion confirmed.", "narr");
		scr_text("These masked creatures ravaged the land, taking all resources for their gain.", "narr");
		scr_text("All for the status they arrogantly proclaim to have.", "narr");
		scr_text("How else to show off this status than the yearly decadent ceremony?", "narr");
		scr_text("For this year in particular, they are staging this on the very remains of your homeland.", "narr");
		scr_text("I think you are overdue for an invitation, so why not walk on in?", "narr");
		scr_text("It’s time for revolution, and unmask the monster within.", "narr");
		scr_options("Begin", "start");
		break;
	
	case "start":
		room_goto(Room1);
		break;
		
	case "outro":
		scr_text("Everyone’s masks slip, their status, their terror.", "narr");
		scr_text("The monsters have been revealed, but their actions still ripple throughout the forest.", "narr");
		scr_text("As one by one fall, what shall you do next?", "narr");
		scr_text("Will you keep true, or wear the mask, become the new order?", "narr");
		scr_text("In life, it’s the masks we wear that hide our truest of intentions.", "narr");
		scr_text("What will be yours?", "narr");
			scr_options("Quit", "quit");
			scr_options("Try again", "restart");
		break;
		
	case "quit":
		exit;
		break;
		
	case "restart":
		game_restart()
		break;
	
	#endregion
	
	#region dialogue
	
		#region staff (after bedroom)
		
		case "staff":
			scr_text("Staff: Excuse me, this room is allocated to Le Monsieur Don.", "staff");
			scr_text("Staff: State your business.", "staff");
				scr_options("I apologise", "staffPos");
				scr_options("He asked me", "staffNeu");
				scr_options("Never heard of him", "staffNeg");
			break;
				
		case "staffPos":
			scr_text("You: Apologies! I must have gotten the wrong room.", "narr");
			scr_text("You: Wouldn't want to upset the Don.", "narr");
			scr_text("Staff: I see...", "staff");
			scr_text("Staff: Make sure to not make the same mistake again or we will revoke your invitation.", "staff");
			break;
		
		case "staffNeu":
			scr_text("You: Of course!", "narr");
			scr_text("You: He asked me to grab something for him. He doesn’t want to waste his time grabbing it.", "narr");
			scr_text("Staff: Ah, as expected of Le Don. Please continue with what you were doing.", "staff");
			break;
		
		case "staffNeg":
			scr_text("You: I’ve never heard of this Monsieur Don.", "narr");
			scr_text("Staff: Considering his status...", "staff");
			scr_text("Staff: You should know EVERYTHING about him.", "staff");
			scr_text("YOU HAVE BEEN CAUGHT", "narr");
			//GAME OVER
			break;
		
		#endregion
		
		#region chef (after poisoning food)
		
		case "soup":
			scr_text("Chef: OI!!!!!", "chef");
			scr_text("Chef: Le soup isn't ready yet! What did you put in there?", "chef");
				scr_options("Le Don likes it spicy", "soupPos");
				scr_options("Le Don likes it sweeter", "soupNeg");
				scr_options("Le Don likes it stirred more", "soupNeu");
			break;
		
		case "soupPos":
			scr_text("You: You forgot the most important ingredient.", "narr");
			scr_text("You: Le Don likes his spices, there is no punch in this soup!", "narr");
			scr_text("Chef: Ce n’est pas bon!!!!", "chef");
			scr_text("Chef: Merci friend, go and enjoy the ball room. Le soup will be out soon!", "chef");
			//go to ballroom and trigger ending
			break;
		case "soupNeg":
			scr_text("You: I added some sweetness to the soup! Le Don likes sweetness in his soup.", "narr");
			scr_text("Chef: Non, non, NON!!!!", "chef");
			scr_text("Chef: Le Don doesn't like sweetness....", "chef");
			scr_text("Chef: You should know better.", "chef");
			scr_text("YOU HAVE BEEN CAUGHT", "narr");
			//game over
			break;
		case "soupNeu":
			scr_text("You: I was giving the soup a good stirring, just how Le Don likes it!", "narr");
			scr_text("Chef: Oui, but guests are not meant to be in the back!", "chef");
			scr_text("Chef: Leave le cooking to me or Au revoir to invitation.", "chef");
			//go to ballroom trigger ending unless something else?
			break;
		
		#endregion
		
		#region chef (after poisoning wine)
		
		case "wine":
			scr_text("Chef: OI!!!!!", "chef");
			scr_text("Chef: What are you doing with le wine!!!", "chef");
				scr_options("This party needs ale!","wineNeg");
				scr_options("(Act drunk)","wineNeu");
				scr_options("Le Don needs more wine!","winePos");
			break;
		
		case "wineNeg":
			scr_text("You: Le Ale, that’s what this party needs.", "narr");
			scr_text("Chef: Le Ale???? Le Party?????? Non, non, NON!!!!!!", "chef");
			scr_text("Chef: This is an event for le people of high standing! Not folk like YOU.", "chef");
			scr_text("(YOU HAVE BEEN CAUGHT)", "narr");
			//game over
			break;
		case "wineNeu":
			scr_text("You: (Acting Drunk) Le Wine, Le Wine, it’s all I need.", "narr");
			scr_text("Chef: Monsieur, you can’t be seen like this, go sort yourself out.", "chef");
			scr_text("Chef: We wouldn’t want to kick le Monsieur out now.", "chef");
			//ballroom trigger ending unless something else
			break;
		case "winePos":
			scr_text("You: Le Wine is about to run out, Le Don wouldn’t be happy without his wine.", "narr");
			scr_text("Chef: Oui!!!! Of course!!!!!!!", "chef");
			scr_text("Chef: Le Guests must have been enjoying a bit too much. I’ll bring this barrel up soon! Go enjoy le food in la ballroom!", "chef");
			//ballroom trigger ending
			break;
		
		#endregion
		
		#region guest 1 (bedroom/staff hint)
		
		case "guest1":
			scr_text("Guest: Ohohohoho!!", "f1guest");
			scr_text("Guest: Such a deviliously exquisite event, might I say le Monsieur knows how to make moi smile.", "f1guest");
				scr_options("You have good taste","guest1Pos");
				scr_options("I could do better","guest1Neg");
				scr_options("Are these events common?","guest1Neu");
			break;
		
		case "guest1Pos":
			scr_text("You: Le Monsieur has such great tastes... Such as yourself.", "narr");
			scr_text("Guest: Ohohoho! You flatter me!", "f1guest");
			scr_text("Guest: You remind me of the people who fetch stuff for Le Monsieur Don. Sweet, but also might be silly. Leaving something on the side.", "f1guest")
			break;
		case "guest1Neg":
			scr_text("You: Je would have much more festivities on display.", "narr");
			scr_text("Guest: Ohohohohoho!!", "f1guest");
			scr_text("Guest: Maybe you should run your own event instead. Who would remember Le Monsieur Don after your event, right?", "f1guest");
			break;
		case "guest1Neu":
			scr_text("You: Does Le Monsieur run events often?", "narr", "f1guest");
			scr_text("Guest: Ohohoho! You must be new in Status.", "f1guest");
			scr_text("Guest: Le Monsieur Don runs all le events around here.", "f1guest");
			break;
		
		#endregion
		
		#region guest 2 (chef hint)
		
		case "guest2":
			scr_text("Guest: Le Food is just impeccable, Le Monsieur knows how to choose his chefs.", "f2guest");
				scr_options("Le food is missing something","guest2Neg");
				scr_options("Le food needs drink","guest2Neu");
				scr_options("Le food is very good","guest2Pos");
			break;
		
		case "guest2Neg":
			scr_text("You: Le food seems to be missing something…", "narr");
			scr_text("Guest: Maybe you should add le sweetness to it. It might get you to appreciate impeccable food.", "f2guest");
			break;
		case "guest2Neu":
			scr_text("You: Le food needs a good drink to go with it.", "narr");
			scr_text("Guest: Le Wine is always good with some food, though we are running low.", "f2guest");
			break;
		case "guest2Pos":
			scr_text("You: Le Chef hits le perfect flavour, it’s something else.", "narr");
			scr_text("Guest: Oui! Le Monsieur loves his spices and le Chef’s methods are magnifique!", "f2guest");
			break;
		
		#endregion
		
		#region guest 3 (room number)
		
		case "guest3":
			scr_text("Guest: Everything is so warm and ampleur above everyone else. Especially le rooms!", "mguest");
			scr_text("Guest: Moi could fall asleep just thinking about it.", "mguest");
				scr_options("I enjoy seeing everything","guest3Neu");
				scr_options("I bet Le Don's room is big","guest3Pos");
				scr_options("Le Don wouldn't care about beds","guest3Neg");
			break;
		
		case "guest3Neu":
			scr_text("You: Le une thing I enjoy is getting to walk around le place, seeing many things.", "narr");
			scr_text("Guest: Oui! Yet, their beds are so divine, why be anywhere else?", "mguest");
			break;
		case "guest3Pos":
			scr_text("You: Le Monsieur must have le biggest room.", "narr");
			scr_text("Guest: His room of Le 47, is le room to beat all other rooms.", "mguest");
			scr_text("Guest: Moi dreams to get that room une day... Maybe une day...", "mguest");
			break;
		case "guest3Neg":
			scr_text("You: Le Monsieur Don must be more focused on the wonderful events than the beds.", "narr");
			scr_text("Guest: How presumptuous! Le Monsieur isn’t one to skip any experience.", "mguest");
			break;
		
		#endregion
		
	#endregion
	}
}
			
function scr_create_textbox(_text_id){
		with(instance_create_depth(0,0,-999999, obj_textbox)){
	
			scr_game_text(_text_id);
		}
}