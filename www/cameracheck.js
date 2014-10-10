var CameraCheckAccess =  {}

CameraCheckAccess.check = function(callback) {
  cordova.exec(
    function(w) {
      console.log(w);
    },
    function(e) {
      console.log(e);
    },
    "Cameracheck",
    "check",
    ['sodochka']
  );
}

module.exports = CameraCheckAccess;
