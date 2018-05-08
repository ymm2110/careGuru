
<reminder>
  <div>
    <h3>Personalized Health Reminder</h3>
    <p>This reminder shows you annual health screens you need to take, and allows you to add your own items</p>
    <p>Currentlt it only works for adults</p>
    <p>displaying info for : {personCategory}</p>
  </div>


    <reminder-item each={ reminderData }></reminder-item>
    <input type="text" placeholder="Add your own" onkeypress={ addItem }>

    <!--
    <button class="btn btn-danger" disabled={ reminderData.filter(onlyDone).length == 0 }>
        <i>You've completed { reminderData.filter(onlyDone).length } screens</i>
    </button>
    -->

  <script>
    var that = this;
    this.reminderData = [];
    this.uid = this.parent.parent.uid;

    this.age;
    this.gender;
    this.personCategory;
    this.needCorrectDate = false;

    var database = firebase.database();
    var userRef = database.ref('/careGuru/' + this.uid);
    var userReminderRef = userRef.child('/userReminder');
    var ageRef = userRef.child('/surveyData/age');
    var genderRef = userRef.child('/surveyData/gender');

    var reminderDataRef = database.ref('/careGuru/reminderDate');

    //read user age
    ageRef.once('value',function(snapshot){
    that.age = snapshot.val();
    });

    //read user gender
    genderRef.once('value',function(snapshot){
    that.gender = snapshot.val().toLowerCase();
    });

    //determine user category or is missing data
    switch (true) {
    case (that.gender == "female" && (that.age >= 18 && that.age <= 39 )):
      that.personCategory = "woman18to39";
      break;
    case (that.gender == "female" && (that.age >= 40 && that.age <= 64 )):
      that.personCategory = "woman40to64";
      break;
    case (that.gender == "female" && (that.age >= 65)):
      that.personCategory = "woman65plus";
      break;
    case (that.gender == "male" && (that.age >= 18 && that.age <= 39 )):
      that.personCategory = "man18to39";
      break;
    case (that.gender == "male" && (that.age >= 40 && that.age <= 64 )):
      that.personCategory = "man40to64";
      break;
    case (that.gender == "male" && (that.age >= 65)):
      that.personCategory = "man65plus";
      break;
    default:
      that.needCorrectDate = true;
  }

    // request survey data
    if (this.needCorrectDate == true){
      alert("please enter the correct data in survey");
    };

    // get screen data base on user's category
    var personalReminderDataRef = reminderDataRef.child('/Screen/'+this.personCategory);
    personalReminderDataRef.on('value',function(snapshot){
      var dataToBePushed = snapshot.val();
      var reminderDataArray = [];
      for (key in dataToBePushed){
        reminderDataArray.push(dataToBePushed[key]);
      }

      userReminderRef.set(reminderDataArray);
      that.update();
    });


    userReminderRef.on('child_added',function(snapshot) {
      var data = snapshot.val(); // Object with properties as keys
					data.id = snapshot.key;

			that.reminderData.push(data);
			that.update();
    });

    addItem(event){
			var newTask = {};
			if (event.which === 13) {
				newTask.task = event.target.value;	// Grab the user task value
				newTask.done = false;
				var newKey = that.reminderData.length;
        userReminderRef.child(newKey).set(newTask);
				event.target.value = "";	// RESET INPUT
				event.target.focus();			// FOCUS BACK ON INPUT
			}
		}

  </script>

  <style>
  </style>
</reminder>
