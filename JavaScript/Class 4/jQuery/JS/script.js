//jQuery


function fullNameCheck(){
    var fullNameValue = $('#fulName').val();
    var regex = /^[a-zA-Z-. ]{2,20}$/;
    if(regex.test(fullNameValue)){
        $('#fullNameError').text(" ");
        return true;
    } else {
      $('#fullNameError').text("Full Name should be 2 to 20 Character.");
      return false; 
    }
}


$('#fulName').keyup(function(){
    fullNameCheck();
});


function emailCheck(){
    var emailAddressValue = $('#emailAddress').val();
    var regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if(regex.test(emailAddressValue)){
        $('#emailError').text(" ");
        return true;
    } else {
      $('#emailError').text("Invalid email address.");
      return false; 
    }
}


$('#emailAddress').keyup(function(){
    emailCheck();
});


function mobileCheck(){
    var mobileValue = $('#mobile').val();
    var regex = /(^(\+8801|8801|01|008801))[1|3-9]{1}(\d){8}$/;
    if(regex.test(mobileValue)){
        $('#mobileError').text(" ");
        return true;
    } else {
      $('#mobileError').text("Invalid Mobile Number.");
      return false;  
    }
}


$('#mobile').keyup(function(){
    mobileCheck();
});


$('#regForm').submit(function(){
    fullNameCheck();
    emailCheck();
    mobileCheck();

    if(fullNameCheck()==true && emailCheck()==true && mobileCheck()==true){
        return true;
    } 

    return false;
})


//=========================================================================



$('#styleOne').click(function(){
    $('#resDiv').attr('class','style-one');
});


//========================================================================


$('#styleOne').click(function(){
    $('#resDiv').css({
        'background-color':'black',
        'height' : '300px',
        'width' : '400px',
        'border-radius' : '50%'
    });
})

$('#styleDefault').click(function(){
    $('#resDiv').css({
        'background-color':'red',
        'height' : '300px',
        'width' : '400px',
        'border-radius' : '0'
    });
})



//=============================================================


$('#changeTextBtn').click(function(){ 
    $('#heading').text('Bangladesh Two');
});


//===============================================================================


$('#fullNameBtn').click(function(){ 
    var firstNameValue = $('#firstName').val();
    var lastNameValue = $('#lastName').val();

    var fullNameValue = firstNameValue + ' ' + lastNameValue;

    $('#fullName').val(fullNameValue);
});


//===============================================================================

// Smart Watch Start


function smartWatch()
{
    var date = new Date();

    var hours = date.getHours();
    var minutes = date.getMinutes();
    var seconds = date.getSeconds();
    var world = 'AM';
    
    

    if(hours>12){
        var hello= 0 ;
        hello=hours-12;
        world = 'PM';
        var myWatch = hello +':'+ minutes+':'+ seconds +' '+world;
    }
    else if(hours==12){
        world = 'PM';
        var myWatch = hours +':'+ minutes+':'+ seconds +' '+world;
    }
     else{
        var myWatch = hours +':'+ minutes+':'+ seconds +' '+world;
    }

    

    document.getElementById('watchRes').innerText = myWatch;
}

setInterval(smartWatch, 1000);

// Smart Watch End

// function test(){
//     alert('Hello');
// }

//setInterval(test, 3000);
//setTimeout(test,3000);

//setInterval();
//setTimeout();

//console.log(myWatch);