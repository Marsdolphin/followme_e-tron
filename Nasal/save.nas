# Followme e-tron save and resume by Marsdolphin c 2020
# This saves and lets you resume the functions of the car.
# It will be under development for new features.


var save = func {

    var lat = getprop("/position/latitude-deg");
    setprop("/save/latitude-deg", lat);

    var lon = getprop("/position/longitude-deg");
    setprop("/save/longitude-deg", lon);

    var alt = getprop("/position/altitude-ft");
    setprop("/save/altitude-ft", alt);

    var heading = getprop("/orientation/heading-deg");
    setprop("/save/heading-deg", heading);

    var pitch = getprop("/orientation/pitch-deg");
    setprop("/save/pitch-deg", pitch);

    var roll = getprop("/orientation/roll-deg");
    setprop("/save/roll-deg", roll);


    var left_indicator = getprop("/sim/model/lights/indicator-left/state");
    setprop("/save/l/indicator", left_indicator);

    var right_indicator = getprop("/sim/model/lights/indicator-right/state");
    setprop("/save/r/indicator", right_indicator);

    var headlight = getprop("/controls/lighting/headlight");
    setprop("/save/headlight", headlight);


    var horn = getprop("/systems/horn");
    setprop("/save/horn", horn);


    var mode = getprop("/controls/mode");
    setprop("/save/controls/mode", mode);

    var dir = getprop("/controls/direction");
    setprop("/save/controls/dir", dir);

    var aileron = getprop("/controls/flight/aileron");
    setprop("/save/controls/ail", aileron);

    var steering_wheel = getprop("/controls/steering_wheel");
    setprop("/save/controls/stw", steering_wheel);

    var pb = getprop("/controls/gear/brake-parking");
    setprop("/save/controls/pb", pb);



    var platename = getprop("/systems/plate/name");
    setprop("/save/plate_name", platename);

    var platefile = getprop("/systems/plate/file");
    setprop("/save/plate_file", platefile);


    var interior = getprop("/systems/interior/type");
    setprop("/save/type/int", interior);

    var dec = getprop("/systems/decorations-enable");
    setprop("/save/int/dec", dec);

    var pmodel = getprop("/systems/pmodel-enable");
    setprop("/save/pmodel", pmodel);
    
    
    var drr = getprop("/controls/doors/rearright/position-norm");
    setprop("/save/drr", drr);

    var drl = getprop("/controls/doors/rearleft/position-norm");
    setprop("/save/drl", drl);

    var dfr = getprop("/controls/doors/frontright/position-norm");
    setprop("/save/dfr", dfr);

    var dfl = getprop("/controls/doors/frontleft/position-norm");
    setprop("/save/dfl", dfl);


    var bkwh = getprop("/systems/electrical/e-tron/battery-kWh");
    setprop("/save/bkwh", bkwh);

    var br = getprop("/systems/electrical/e-tron/battery-remaining-percent-float");
    setprop("/save/br", br);


    print("State saved");
}


# Resume


var resume = func {

    var lat = getprop("/save/latitude-deg");
    setprop("/position/latitude-deg", lat);

    var lon = getprop("/save/longitude-deg");
    setprop("/position/longitude-deg", lon);

    var alt = getprop("/save/altitude-ft");
    setprop("/position/altitude-ft", alt);

    var heading = getprop("/save/heading-deg");
    setprop("/orientation/heading-deg", heading);

    var pitch = getprop("/save/pitch-deg");
    setprop("/orientation/pitch-deg", pitch);

    var roll = getprop("/save/roll-deg");
    setprop("/orientation/roll-deg", roll);


    var left_indicator = getprop("/save/l/indicator");
    setprop("/sim/model/lights/indicator-left/state", left_indicator);

    var right_indicator = getprop("/save/r/indicator");
    setprop("/sim/model/lights/indicator-right/state", right_indicator);

    var headlight = getprop("/save/headlight");
    setprop("/controls/lighting/headlight", headlight);


    var horn = getprop("/save/horn");
    setprop("/systems/horn", horn);


    var mode = getprop("/save/controls/mode");
    setprop("/controls/mode", mode);

    var dir = getprop("/save/controls/dir");
    setprop("/controls/direction", dir);

    var aileron = getprop("/save/controls/ail");
    setprop("/controls/flight/aileron", aileron);

    var steering_wheel = getprop("/save/controls/stw");
    setprop("/controls/steering_wheel", steering_wheel);

    var pb = getprop("/save/controls/pb");
    setprop("/controls/gear/brake-parking", pb);




    var platename = getprop("/save/plate_name");
    setprop("/systems/plate/name", platename);

    var platefile = getprop("/save/plate_file");
    setprop("/systems/plate/file", platefile);


    var interior = getprop("/save/type/int");
    setprop("/systems/interior/type", interior);

    var dec = getprop("/save/int/dec");
    setprop("/systems/decorations-enable", dec);

    var pmodel = getprop("/save/pmodel");
    setprop("/systems/pmodel-enable", pmodel);

    
    var drr = getprop("/save/drr");
    setprop("/controls/doors/rearright/position-norm", drr);

    var drl = getprop("/save/drl");
    setprop("/controls/doors/rearleft/position-norm", drl);

    var dfr = getprop("/save/dfr");
    setprop("/controls/doors/frontright/position-norm", dfr);

    var dfl = getprop("/save/dfl");
    setprop("/controls/doors/frontleft/position-norm", dfl);


    
    var bkwh = getprop("/save/bkwh");
    setprop("/systems/electrical/e-tron/battery-kWh", bkwh);

    var br = getprop("/save/br");
    setprop("/systems/electrical/e-tron/battery-remaining-percent-float", br);

    print("State resumed!");
}
