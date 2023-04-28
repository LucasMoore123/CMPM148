function generate_owner(){
  result = "<ol>"
  owner = {
	"origin":["Your name is #firstname# #lastname#. You are a(n) #ownerDesc# merchant. You are #ownerPricing# in regards to your pricing."],
	"firstname":["Theren", "Gwendolyn", "Zephyr", "Kaelen", "Morgath", "Drogath", "Galadriel", "Draven", "Mordekai", "Xander", "Yara", "Niamh", "Rhiannon", "Emeric", "Kethryllia", "Thia", "Asher", "Elden", "Valerius", "Sariel"],
	"lastname":["Blackwood", "Moonshadow", "Bloodfist", "Silverscale", "Ironheart", "Goldflame", "Stormweaver", "Ravenwing", "Frostblade", "Stonebreaker", "Dragonborn", "Starweaver", "Swordhand", "Brightsoul", "Windrider", "Bloodstone", "Shadowhunter", "Thornbush", "Stormcaller", "Flintlock"],
	"ownerDesc":["wizened", "grizzled", "eccentric", "mysterious", "shrewd", "boisterous", "stoic", "flamboyant", "crotchety", "gregarious", "fastidious", "pompous", "witty", "quirky", "eloquent", "obstinate", "persuasive", "jovial", "sly", "kind-hearted"],
	"ownerPricing":["inflexible", "steadfast", "resolute", "unyielding", "stubborn", "firm", "reasonable", "open-minded", "flexible", "pragmatic", "amenable", "adaptive", "accommodating", "capricious", "fickle", "changeable", "unpredictable", "impulsive", "volatile", "mercurial"]
} 
  for (let i = 0; i < 6; i++){
    result += "<li>" + grammars.GenerationSimple(owner) + "</li>";
  }
  result += "</ol>";
  io.write_into_element(result, "owners")
}
