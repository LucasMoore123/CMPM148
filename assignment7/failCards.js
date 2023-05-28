failCards = [{
  resource:"meat", 
  level: "low", 
  card: {
    prompt: "You ran out of meat",
    rightChoiceText: "Vegetarian Restaurant!",
    rightChoice: function(){location.reload();
      },
    
    leftChoiceText: "Time to try again!", 
    leftChoice: function(){location.reload();
    },
    name: "Resource Management",
    resultText: "",
    image: "./images/meat.jpg"
  }  
},
{
  resource:"veggies", 
  level: "low", 
  card: {
    prompt: "You ran out of vegetables",
    rightChoiceText: "Carnivore Restaurant!",
    rightChoice: function(){location.reload();
      },
    
    leftChoiceText: "Run it back!", 
    leftChoice: function(){location.reload();
    },
    name: "Resource Management",
    resultText: "",
    image: "./images/vegetables.jpg"
  }  
},
{
  resource:"stars", 
  level: "low", 
  card: {
    prompt: "You made it to 0 stars.",
    rightChoiceText: "Heck the haters",
    rightChoice: function(){location.reload();
      },
    
    leftChoiceText: "I didn't need them anyways.", 
    leftChoice: function(){location.reload();
    },
    name: "Critic Diff",
    resultText: "",
    image: "./images/customer.jpg"
  }  
},
{
  resource:"drama", 
  level: "high", 
  card: {
    prompt: "You were overrun by drama.",
    rightChoiceText: "So sad.",
    rightChoice: function(){location.reload();
      },
    
    leftChoiceText: "Too bad.", 
    leftChoice: function(){location.reload();
    },
    name: "Drama alert nation",
    resultText: "",
    image: "./images/owner.jpg"
  }  
},
{
  resource:"stars", 
  level: "high", 
  card: {
    prompt: "Your restaurant is so good that you made it to 5 stars.",
    rightChoiceText: "I'm the best",
    rightChoice: function(){location.reload();
      },
    
    leftChoiceText: "I am so good", 
    leftChoice: function(){location.reload();
    },
    name: "Restaurant Owner Confirmed.",
    resultText: "",
    image: "./images/owner.jpg"
  }  
}]

defaultFailCard = {
  prompt: "The kitchen failed.",
  rightChoiceText: "My bad.",
  rightChoice: function(){location.reload();
    },
  
  leftChoiceText: "I blame you.", 
  leftChoice: function(){location.reload();
  },
  name: "Gordon",
  resultText: "It was your fault.",
  image: "./images/owner.jpg"
}