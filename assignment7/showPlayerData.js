happyCustomers = 0;


function updatePlayerData(){
  
  
let dataToShow = "HAPPY CUSTOMERS: "+ happyCustomers;


io.writeIntoElement(dataToShow,"playerData")

}