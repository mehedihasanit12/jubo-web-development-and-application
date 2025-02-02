const myInfo = {
    myName : "Asif",
    myWeb : "asif.com.bd",
    myGender : "Male",
    isAlive : true,
    weight : 65,
    address : [
        'Dhaka',
        'Bangladesh'
    ],
    phone : {
        mobile : '01743534534',
        home: '0342543454'
    },
    myJob : function(){
        return 'Web Developer';
    }
}

console.log(myInfo.myJob());