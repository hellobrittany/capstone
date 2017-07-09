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
      gudigging: "",
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
      ownedPets: []
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
                      this.allergies,
                      this.reasonCompanion,
                      this.reasonKids,
                      this.reasonGift,
                      this.reasonOtherPet,
                      this.reasonWatchdog,
                      this.homeDuringDay,
                      this.whenOutside,
                      this.whenInside, 
                      this.hoursDogLeftAlone, 
                      this.whereDogSleep, 
                      this.outsideAreas, 
                      this.preferredLevelOfExercise, 
                      this.typeOfDogFood,
                      this.whereDogStay, 

                      };
      },
    }  



      //syntax for model to send params to API, Rails needs this:
      {
        "number_of_current_pets": numberOfCurrentPets
      }
  });
});