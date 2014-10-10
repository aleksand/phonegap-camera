
#import "CDVCameracheck.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <AVFoundation/AVFoundation.h>

@implementation CDVCameracheck

- (void)checkPhotos:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
    self.callbackID = command.callbackId;
    
    ALAuthorizationStatus authStatus = [ALAssetsLibrary authorizationStatus];
    
    if (authStatus == ALAuthorizationStatusAuthorized) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"No access to photos"];
    }
        
    NSLog(@"check photos access: %ld", authStatus);
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)checkCamera:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
    self.callbackID = command.callbackId;
    NSString *mediaType = AVMediaTypeVideo; // Or AVMediaTypeAudio
    
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    
    if (authStatus == AVAuthorizationStatusDenied) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"No camera access"];
    }

    NSLog(@"check camera result %ld", authStatus);

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
