Java.perform(function () {
    var Location = Java.use("android.location.Location");

    Location.getLatitude.implementation = function () {
        console.log("getLatitude");
        return "2.6407284";
    }

    Location.getLongitude.implementation = function () {
        console.log("getLongitude");
        return 52.1835561;
    }
})