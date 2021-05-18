#import <UIKit/UIKit.h>

%hook BluebirdPatchedSwiftClassNameT1Application
- (id)init {
    NSURL* url = [[NSURL alloc] initWithString: @"about:blank"];
[[UIApplication sharedApplication] openURL: url];
    return NULL;
}
%end

%ctor {
    %init(BluebirdPatchedSwiftClassNameT1Application = objc_getClass("Bluebird.T1Application"));

}
