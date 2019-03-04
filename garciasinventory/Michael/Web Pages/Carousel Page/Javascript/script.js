//FillInTheBlanks, unjumble
function checkScore() {
    var values = document.getElementsByName("field");
    var answer = document.getElementsByName("ans");
    var count = 0;
    for (var i = 0; i < answer.length; i++) {
        if(values[i].value===answer[i].value){
            count++;
        }
    }

        alert("Score: "+count);
   
     var score = document.getElementById("score");
    score.value = count;
}
//multipleChoices
function checkScoreByClass(){
    var values = document.getElementsByClassName("mcchoice");
    var answer = document.getElementsByName("ans");
    var count = 0;
    var index = 0;
    for(var i = 0; i < answer.length; i++){
        for(var j = 0; j < values.length; j++){
            if(answer[i].value===values[j].value && values[j].checked===true){
                count++;
            }
        }
    }
    alert("Score: "+count);
    var score = document.getElementById("score");
    score.value = count;
    console.log(score.value);
}
//matchingtype
function checkScoreByClasses(){
    var values = document.getElementsByName("field");
    var answer = document.getElementsByName("ans");
    var count = 0;
    for(var i = 0; i < answer.length;i++){
        var current = values[i];
        if(current.options[current.selectedIndex].value===answer[i].value){
            count++;
        }
    }
     alert("Score: "+count);
     var score = document.getElementById("score");
    score.value = count;
}



