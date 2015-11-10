var CameraCheck =  {}

CameraCheck.checkCamera = function(success, error) {
  cordova.exec(
    success,
    error,
    "Cameracheck",
    "checkCamera",
    []
  );
}

CameraCheck.checkPhotos = function(success, error) {
  cordova.exec(
    success,
    error,
    "Cameracheck",
    "checkPhotos",
    []
  );
}

CameraCheck.goToSettings = function(success, error) {
  cordova.exec(
    success,
    error,
    "Cameracheck",
    "goToSettings",
    []
  );
}

module.exports = CameraCheck;
