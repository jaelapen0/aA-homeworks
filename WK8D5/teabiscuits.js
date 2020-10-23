const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits(callback){

    reader.question("Would you like some tea?", function(teaAns){
        reader.question("Would you like some biscuits?", function(bisAns){

            callback(teaAns, bisAns);
        });
    });


}

teaAndBiscuits(function (teaAns, biscuitAns) {
    console.log(`The user ${teaAns} like some tea and ${biscuitAns} some biscuits.`);
    reader.close();
});
