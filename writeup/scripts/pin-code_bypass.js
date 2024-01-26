Java.perform(function () {
    let MainActivity = Java.use("com.angara.coffeeshop.MainActivity");
    MainActivity["CheckPasscode"].implementation = function (passcode) {
        console.log('CheckPasscode is called' + ', ' + 'passcode: ' + passcode);
        let ret = this.CheckPasscode(passcode);
        console.log('CheckPasscode ret value is ' + ret);
        console.log('But return true anyway');
        return true;
    };
})