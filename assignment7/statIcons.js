let resources = [
  {key: "meat", value: 50, image: "./images/steak.svg", },
  {key: "veggies", value: 50, image: "./images/bok-choy.svg"},
  {key: "drama", value: 50, image: "./images/drama-mask.svg"},
  {key: "stars", value: 50, image: "./images/star.svg"}
]

function addResource(key, amount){
  // Makes sure values stay within bounds if not hitting a fail condition.
  for (x in resources){
    if (key == resources[x].key){
      resources[x].value += amount;
      if (resources[x].value > 100 && resources != "drama" && resources != "stars"){
        resources[x].value = 100;
      }
      if (resources == "drama" && resources[x].value < 0){
        resources[x].value = 0
      }
    }
  }
}

function setResource(key, amount){
  for (x in resources){
    if (key == resources[x].key) resources[x].value = amount;
  }
}


function setStatIcons () {
  let resource_bar = ""
  
  for (x in resources) {
    resource_bar += "<div class='statIconImageContainer'><div class='resourceBarFront' id='" + resources[x].key + "Bar'></div><div class='resourceBarBack'></div><image src='" + resources[x].image +"'class='statIconImage' id='" + resources[x].key +  "'> </image></div>"
  }

  io.appendIntoElement(resource_bar, "statIcons")
} 

function updateMeters() {
    for (x in resources) {
      //console.log(resources[x].key+"Bar", resources[x].value/100*75)
      document.getElementById(resources[x].key+"Bar").style.transform = "scaleY(" + resources[x].value/100 + ")";
      //console.log(resources[x].value/100*75+ "px", )
  }
  
}

function checkFail() {
  failures = []
  resource_low = ["meat", "veggies", "stars"]
  resource_high = ["stars", "drama"]
    for (x in resource_low) {
      if (resources[x].value < 0) {failures.push({rsource: resources[x].key, level: "low"})}
  }
  for (x in resource_high){
    if (resources["drama"].value > 100) {failures.push({resource: resources["drama"].key, level: "high"})}
  }
   console.log(failures)
  for (x in failures){
    let f = failures[x];
    for ( i in failCards){
      let failCard = failCards[i];
      if (failCard.resource === f.resource && failCard.level === f.level)
        addToTopDeck(failCard.card, false)
      else
        addToTopDeck(defaultFailCard, false)
    }
    
  }
 
}