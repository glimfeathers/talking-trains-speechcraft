Scriptname GF02_TTS_DialogueScript extends ReferenceAlias  
{Checks when player talks and gives Speechcraft experience.}

GlobalVariable Property GF02_TTS_ExperienceSlider Auto

Event OnInit()
	RegisterForKey(	input.GetMappedKey("Activate"))
EndEvent

Event OnPlayerLoadGame()
	RegisterForKey(	input.GetMappedKey("Activate"))
	RegisterForKey(28)
EndEvent

Event OnKeyDown(int keyCode)

	bool isInDialogueMenu = UI.IsMenuOpen("Dialogue Menu")
	bool isInBarterMenu = UI.IsMenuOpen("BarterMenu")
	bool isInGiftMenu = UI.IsMenuOpen("GiftMenu")
	bool isInTrainingMenu = UI.IsMenuOpen("Training Menu")
	
	if isInDialogueMenu && !isInBarterMenu  && !isInGiftMenu && !isInTrainingMenu
		Game.AdvanceSkill("Speechcraft",  GF02_TTS_ExperienceSlider.GetValue() as Float)
	endIf

EndEvent
