Scriptname GF02_TTS_MCMScript extends MCM_ConfigBase  
{Implements MCM Config Script}

GlobalVariable Property GF02_TTS_ExperienceSlider Auto

Event OnConfigInit()
    GF02_TTS_ExperienceSlider.SetValue(GetModSettingFloat("fExperienceSlider:Main") as Float)
EndEvent

Event OnSettingChange(string a_ID)
	if a_ID == "fExperienceSlider:Main"
		GF02_TTS_ExperienceSlider.SetValue(GetModSettingFloat(a_ID) as Float)
	endif
EndEvent