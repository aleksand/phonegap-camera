#import <Cordova/CDV.h>

@interface Cameracheck : CDVPlugin  {
  // Member variables go here.
}

@property(strong) NSString* callbackID;

- (void)check:(CDVInvokedUrlCommand*)command;

@end