const myStudents = [
    {
        id: 1,
        name: "John",
        age: 20
    },
    {
        id: 2,
        name: "John",
        age: 20
    },
    {
        id: 3,
        name: "John",
        age: 20
    }
];

// stringify the array of json

console.log(JSON.stringify(myStudents));

console.log(JSON.parse(myStudents));
