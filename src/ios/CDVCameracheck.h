#import <Cordova/CDV.h>

@interface CDVCameracheck : CDVPlugin  {
  // Member variables go here.
}

@property(strong) NSString* callbackID;

- (void)check:(CDVInvokedUrlCommand*)command;

@end