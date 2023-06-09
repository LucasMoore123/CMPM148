function generate_seller(){
  result = "<ol>"
  seller = {
"origin":"Your name is #firstname# #lastname#. You are a(n) #sellerDesc# traveler. You are trying to sell a(n) #itemDesc# #itemDesc2# #item#.",
"firstname":["Valtair", "Elsira", "Gryphon", "Rorik", "Lirien", "Amadeus", "Althaea", "Balthazar", "Eirlys", "Caspian", "Evangeline", "Falkor", "Aethon", "Astraeus", "Isadora", "Lorcan", "Neriah", "Orion", "Seraphine", "Thorne"],
"lastname":["Rockhammer", "Flamestrike", "Brightshield", "Oakheart", "Whisperwind", "Swiftblade", "Frostbeard", "Doombringer", "Goldmane", "Bladefang", "Skysong", "Stormborn", "Bloodmoon", "Nightshade", "Silentstep", "Shadowdancer", "Swiftfoot", "Ironhide", "Thornbreaker", "Soulreaper"],
"sellerDesc":["adventurous", "wandering", "nomadic", "intrepid", "curious", "vagabond", "fearless", "journeying", "peripatetic", "roaming", "bold", "exploring", "itinerant", "peregrine", "restless", "globetrotting", "seeking", "transient", "rambling", "wayfaring"],
"itemDesc":["immaculate", "pristine", "flawless", "mint", "spotless", "excellent", "well-maintained", "gently used", "worn", "scratched", "scuffed", "blemished", "tarnished", "weathered", "rusty", "rusted", "cracked", "chipped", "broken", "dilapidated"],
"itemDesc2":["brand new", "freshly made", "recently crafted", "newly forged", "unworn", "unused", "mint condition", "pristine condition", "like new", "lightly used", "gently used", "moderately used", "well-used", "worn", "well-worn", "vintage", "antique", "old-fashioned", "ancient", "timeless"],
"item":["potion of healing", "scroll of fireball", "ring of protection", "amulet of health", "wand of magic missiles", "cloak of elvenkind", "bag of holding", "staff of the python", "plate mail armor", "dagger of venom", "gloves of thievery", "bracers of defense", "boots of speed", "holy symbol", "quiver of arrows", "book of spells", "rope of climbing", "sentient sword", "crystal ball", "headband of intellect"]
}
  for (let i = 0; i < 6; i++){
    result += "<li>" + grammars.GenerationSimple(seller) + "</li>";
  }
  result += "</ol>";
  io.write_into_element(result, "sellers")
}
