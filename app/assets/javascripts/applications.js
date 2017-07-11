document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      // lifestyle info
      allergies: "",
      reasonCompanion: "",
      reasonKids: "",
      reasonGift: "",
      reasonOtherPet: "",
      reasonWatchdog: "",
      homeDuringDay: "", 
      whenOutside: "", 
      whenInside: "", 
      hoursDogLeftAlone: "", 
      whereDogSleep: "", 
      outsideAreas: "", 
      preferredLevelOfExercise: "", 
      typeOfDogFood: "", 
      whereDogStay: "", 

      // ownership history
      numberOfCurrentPets: "", 
      allowedBreeding: "", 

      //owned pets
      ownershipHistoryId: "",
      species: "",
      breed: "",
      current: "",
      lengthOfOwnership: "",
      explanation: "",

      //ownership profile
      regularVet: "", 
      whoGrooms: "", 
      wearsCollar: "",
      experienceLevel: "", 
      disciplineStyle: "", 
      trainingObedienceClass: "", 
      trainingHit: "", 
      trainingVerbal: "", 
      trainingClicker: "", 
      trainingOther: "", 
      dogWalkStyle: "", 
      ready: "", 
      invested: "", 
      moveLocallyPlan: "", 
      moveFarPlan: "", 
      moveInternationallyPlan: "", 
      guExcessiveBarking: "", 
      guBiting: "", 
      guDigging: "",
      guMoving: "",
      guDivorce: "",
      guPoorWatchdog: "",
      guDistructive: "", 
      guFinancial: "",
      guAccidents: "",
      guGrowls: "",
      guVetBills: "",
      guShedding: "",
      guAllergies: "",
      guNewPartner: "",
      guAggressive: "",
      guOther: "",

      //dwelling info
      hasFencing: "",
      fenceHighestHeight: "",
      fenceLowestHeight: "", 
      hasGates: "",
      streetAccess: "", 
      whoHasYardAccess: "", 

      //add models
      newOwnedPet: "", 
      ownedPets: [],
      newLifestyleInfo: {}
      },
    

    methods: {
      addOwnedPet: function() {
        this.errors = [];
        var params = {
                       id: this.ownershipHistoryId,
                       species: this.species,
                       breed: this.breed, 
                       current: this.current, 
                       "length_of_ownership": this.lengthOfOwnership, 
                       explanation: this.explanation
                      };
        $.post('/api/v1/applications.json', params, function(newOwnedPet) {
          this.ownedPets.push(newOwnedPet);
          this.species = '';
          this.breed = '';
          this.current = '';
          this.lengthOfOwnership = '';
          this.explanation = '';

        }.bind(this)).fail( function(response) {
          this.errors = response.responseJSON.errors;
        }.bind(this));
      },

      updateLifestyleInfo: function() {
          this.errors = [];
          var params = {
                        allergies: this.allergies,
                        "reason_companion": this.reasonCompanion,
                        "reason_kids": this.reasonKids,
                        "reason_gift": this.reasonGift,
                        "reason_other_pet": this.reasonOtherPet,
                        "reason_watchdog": this.reasonWatchdog,
                        "home_during_day": this.homeDuringDay,
                        "when_outside": this.whenOutside,
                        "when_inside": this.whenInside, 
                        "hours_dog_left_alone": this.hoursDogLeftAlone, 
                        "where_dog_sleep": this.whereDogSleep, 
                        "outside_areas": this.outsideAreas, 
                        "preferred_level_of_exercise": this.preferredLevelOfExercise, 
                        "type_of_dog_food": this.typeOfDogFood,
                        "where_dog_stay": this.whereDogStay
                        };
          $.post('/api/v1/applications.json', params, function(newLifestyleInfo) {
            this.newLifestyleInfo.push(newLifestyleInfo);
            
          }.bind(this)).fail( function(response) {
            this.errors = response.responseJSON.errors;
          }.bind(this));
      },  

      updateOwnershipHistory: function() {
        this.errors = [];
        var params = {
                      "number_of_current_pets": this.numberOfCurrentPets,
                      "allowed_breeding": this.allowedBreeding 
                      };
        $.post('/api/v1/applications.json', params, function(newOwnershipHistory) {
            this.newOwnershipHistory.push(newOwnershipHistory);
            
          }.bind(this)).fail( function(response) {
            this.errors = response.responseJSON.errors;
          }.bind(this));

      },      
      },















    
  });
});