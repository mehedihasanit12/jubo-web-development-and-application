


var mainImage = document.getElementById('mainImage');


var img1 = document.getElementById('img1');
img1.onclick = function(){
    var imgUrl = img1.getAttribute('src');
    mainImage.setAttribute('src',imgUrl);
}

//--------------------------------------------------------------------------------------

var img2 = document.getElementById('img2');
img2.onclick = function(){
    var imgUrl = img2.getAttribute('src');
    mainImage.setAttribute('src',imgUrl);
}

//--------------------------------------------------------------------------------------

var img3 = document.getElementById('img3');
img3.onclick = function(){
    var imgUrl = img3.getAttribute('src');
    mainImage.setAttribute('src',imgUrl);
}

//----------------------------------------------------------------------------------------

var img4 = document.getElementById('img4');
img4.onclick = function(){
    var imgUrl = img4.getAttribute('src');
    mainImage.setAttribute('src',imgUrl);
}

//----------------------------------------------------------------------------------------



var fName = document.getElementById('fName');
fName.onkeyup = function(){
    document.getElementById('res1').innerText = fName.value;
}

var lName = document.getElementById('lName');
lName.onkeyup = function(){
    document.getElementById('res2').innerText = lName.value;
}

lName.onblur = function(){
    document.getElementById('res3').innerText = fName.value+' '+lName.value;
    document.getElementById('resultDiv').innerText = document.getElementById("res3").textContent;
}


    var fullNameBtn = document.getElementById('fullNameBtn');
    fullNameBtn.onclick = function(){
        var firstNameValue = document.getElementById('firstName').value;
        var lastNameValue = document.getElementById('lastName').value;
        var fullName = firstNameValue + ' ' +lastNameValue;
        document.getElementById('fullName').value = fullName;
        document.getElementById('resultDiv').append(fullName);
}

//---------------------------------------------------------------------------

    var prothom = document.getElementById('prothom');
    var ditio = document.getElementById('ditio');
    var purno = document.getElementById('purno');


    



//----------------------------------------------------------------------------

// var fullNameBtn = document.getElementById('fullNameBtn');
//     fullNameBtn.onclick = function(){
//         var firstNameValue = document.getElementById('firstName').value;
//         var lastNameValue = document.getElementById('lastName').value;
//         var fullName = firstNameValue + ' ' +lastNameValue;
//         document.getElementById('fullName').value = fullName;
//         document.getElementById('resultDiv').append(fullName);
// }



// function makeDiv()
// {
//     var s = document.createElement('div');
//     s.className = "div-one";
//     // s.style.height = "300px";
//     // s.style.width = "400px";
//     // s.style.background = 'salmon';
//     // s.style.margin = '20px';

//     document.getElementById('resultDiv').append(s);
// }



// function add(x = 55,y = 10)
// {
    
//     var z = x + y;
//     document.write(z);
//     //return z;
// }

// document.write("<br/>====================<br/>");
// add(10,20);

// document.write("<br/>====================<br/>");
// add();

// document.write("<br/>====================<br/>");
// add(100,500);

//document.write(add());

// var student = ['Sojib', 'sojib@gmail.com','0183737434'];

// //json object-----------------------------------------------------------------------
// var student = {
//     name: 'Sojib',
//     email: 'sojib@gmail.com',
//     mobile: {
//         personal: '0343245345',
//         gurdian: '8454543455'
//     },
//     marks: [10,20,30],
//     add: function() {
//         var sum = 0;
//         var key;
//         for(key in this.marks){
//             sum += this.marks[key];
//         }
//         return sum;
//     }
// };

// document.write(student.add());

// document.write(student.add()); 


//document.write(student.email);

//key value pair data 

//json array-------------------------------------------------------------------------
// var students = [
//     {name: 'Sojib', email: 'sojib@gmail.com', mobile: '01434344'},
//     {name: 'Ratul', email: 'ratul@gmail.com', mobile: '675757567'},
//     {name: 'Rakib', email: 'rakib@gmail.com', mobile: '56754656'}
// ];

//console.log(student);

// var index;
// for(index in students)
// {
//     document.write(students[index].name + ' '+students[index].email+'<br/>');
// }

//document.write(students[2].email);

//Alt+DownArrow

// var data = ['Savar','JavaScript',100,10.25,true];
// var key;
// for(key in data)
// {
//     document.write(data[key]+' ');
// }
//document.write(data[3]);