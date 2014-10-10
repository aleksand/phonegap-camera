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

module.exports = CameraCheck;
