
firstCard = {
  prompt: "Don't you love the kitchen?",
  rightChoiceText: "Yes, I do!",
  rightChoice: function(){
    addResource("drama", -20)
      addPackToDeck("kitchen")
    addToTopDeck("BossHappy")
    happyCustomers += 1;
    },
  
  leftChoiceText: "No, I don't!", 
  leftChoice: function(){
    addResource("drama", 20)
      addPackToDeck("kitchen")
    addToTopDeck("BossSad")
  },
  name: "Boss",
  resultText: "",
  image: "./images/owner.jpg",
  priority: 1,
  pack : "none"
}


cardPool = {
  "uniqueIDList" : ["BossHappy", "BossSad"],
  
  "BossHappy" : {
    prompt: "Amazing! Welcome to the team!",
    rightChoiceText: "Thanks boss!",
      rightChoice: function(){
        setResource("veggies", 100)
        setResource("meat", 100)
        setResource("drama", 0)
      },
    leftChoiceText: "Sure man.", 
    leftChoice: function(){
      setResource("veggies", 70)
      setResource("meat", 70)
      setResource("drama", 30)
    },
    name: "Boss",
    resultText: "",
    image: "./images/owner.jpg",
    priority: 2,
    pack : "none"
  },


  "BossSad": {
    prompt: "I'm sorry to hear that.",
    rightChoiceText: "My bad man.",
      rightChoice: function(){
        setResource("veggies", 70)
        setResource("meat", 70)
        setResource("drama", 0)
      },
    leftChoiceText: "Whatever pays the bills", 
    leftChoice: function(){
      setResource("veggies", 50)
      setResource("meat", 50)
      setResource("drama", 0)
    },
    name: "Boss",
    resultText: "",
    image: "./images/owner.jpg",
    priority: 2,
    pack : "none"
  }
}




