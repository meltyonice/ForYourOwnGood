#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class BluebirdPatchedSwiftClassNameT1Application; 
static id (*_logos_orig$_ungrouped$BluebirdPatchedSwiftClassNameT1Application$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$BluebirdPatchedSwiftClassNameT1Application$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$BluebirdPatchedSwiftClassNameT1Application$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    NSURL* url = [[NSURL alloc] initWithString: @"about:blank"];
[[UIApplication sharedApplication] openURL: url];
    return NULL;
}


static __attribute__((constructor)) void _logosLocalCtor_b26952d0(int __unused argc, char __unused **argv, char __unused **envp) {
    {Class _logos_class$_ungrouped$BluebirdPatchedSwiftClassNameT1Application = objc_getClass("Bluebird.T1Application"); { MSHookMessageEx(_logos_class$_ungrouped$BluebirdPatchedSwiftClassNameT1Application, @selector(init), (IMP)&_logos_method$_ungrouped$BluebirdPatchedSwiftClassNameT1Application$init, (IMP*)&_logos_orig$_ungrouped$BluebirdPatchedSwiftClassNameT1Application$init);}}

}
