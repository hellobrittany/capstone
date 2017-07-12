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

      updateLifestyleInfo: function(newLifestyleInfo) {
        this.errors = [];
        var applicationId = document.getElementById("application-id");
        console.log("this works");
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
        console.log("hi");
          $.ajax({
            url: '/api/v1/applications/' + applicationId.innerHTML + '/lifestyle_info/' + applicationId.innerHTML, 
            type: 'PATCH', 
            dataType: 'json', 
            data: params, 

            success: function(data) {
                                    console.log(data);
                                    },
            error: function(e) {
                                console.log(e.message);
                                }
          });
      },  

      updateOwnershipHistory: function() {
        this.errors = [];
        var params = {
                      "number_of_current_pets": this.numberOfCurrentPets,
                      "allowed_breeding": this.allowedBreeding 
                      };
        $.ajax({
          url: '/api/v1/applications/', 
          type: 'PATCH', 
          dataType: 'json', 
          data: params, 
          success: function(data) {
                                  console.log(data);
                                  },
          error: function(e) {
                              console.log(e.message);
                              }
        });      
      },

      updateOwnershipProfile: function() {
        this.errors = [];
        var params = {
                      
                      "regular_vet": this.regularVet,
                      "who_grooms": this.whoGrooms, 
                      "wears_collar": this.wearsCollar,
                      "experience_level": this.experienceLevel, 
                      "discipline_style": this.disciplineStyle, 
                      "training_obedience_class": this.trainingObedienceClass, 
                      "training_hit": this.trainingHit, 
                      "training_verbal": this.trainingVerbal,
                      "training_clicker": this.trainingClicker, 
                      "training_other": this.trainingOther, 
                      "dog_walk_style": this.dogWalkStyle, 
                      "ready": this.ready, 
                      "invested": this.invested, 
                      "move_locally_plan": this.moveLocallyPlan, 
                      "move_far_plan": this.moveFarPlan, 
                      "move_internationally_plan": this.moveInternationallyPlan, 
                      "gu_excessive_barking": this.guExcessiveBarking, 
                      "gu_biting": this.guBiting, 
                      "gu_digging": this.guDigging,
                      "gu_moving": this.guMoving,
                      "gu_divorce": this.guDivorce,
                      "gu_poor_watchdog": this.guPoorWatchdog,
                      "gu_distructive": this.guDistructive, 
                      "gu_financial": this.guFinancial,
                      "gu_accidents": this.guAccidents,
                      "gu_growls": this.guGrowls,
                      "gu_vet_bills": this.guVetBills,
                      "gu_shedding": this.guShedding,
                      "gu_allergies": this.guAllergies,
                      "gu_new_partner": this.guNewPartner,
                      "gu_aggressive": this.guAggressive,
                      "gu_other": this.guOther
                      };
        $.ajax({
          url: '/api/v1/applications/', 
          type: 'PATCH', 
          dataType: 'json', 
          data: params, 
          success: function(data) {
                                  console.log(data);
                                  },
          error: function(e) {
                              console.log(e.message);
                              }
        });      
      },

      updateDwellingInfo: function() {
        this.errors = [];
        var params = {
                      
                      "has_fencing": this.hasFencing,
                      "fence_highest_height": this.fenceHighestHeight,
                      "fence_lowest_height": this.fenceLowestHeight, 
                      "has_gates": this.hasGates,
                      "street_access": this.streetAccess, 
                      "who_has_yard_access": this.whoHasYardAccess

                      };
        $.ajax({
          url: '/api/v1/applications/', 
          type: 'PATCH', 
          dataType: 'json', 
          data: params, 
          success: function(data) {
                                  console.log(data);
                                  },
          error: function(e) {
                              console.log(e.message);
                              }
        });      
      },
    }, 

  });
});
























