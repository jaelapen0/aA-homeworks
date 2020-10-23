function absurdTimes(numTimes, fn) {
    let i = 0;

    function loopStep() {
        if (i == numTimes) {
            // we're done, stop looping
            return;
        }

        fn();

        i++;
        // recursively call loopStep
        loopStep();
    }

    loopStep();
};

function printMoney(){
    console.log("printing dollas")
}
absurdTimes(15, printMoney)