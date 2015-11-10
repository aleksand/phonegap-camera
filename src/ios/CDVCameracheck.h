#import <Cordova/CDV.h>

@interface CDVCameracheck : CDVPlugin  {
  // Member variables go here.
}

@property(strong) NSString* callbackID;

- (void)checkCamera:(CDVInvokedUrlCommand*)command;
- (void)checkPhotos:(CDVInvokedUrlCommand*)command;
- (void)goToSettings:(CDVInvokedUrlCommand*)command;

@end