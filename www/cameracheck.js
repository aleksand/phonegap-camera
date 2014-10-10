window.cameracheck = function(callback) {
  cordova.exec(
    function(w) {
      console.log('success');
    },
    function(e) {
      console.log('error');
    },
    "Cameracheck",
    "check",
    ['sodochka']
  );
}

