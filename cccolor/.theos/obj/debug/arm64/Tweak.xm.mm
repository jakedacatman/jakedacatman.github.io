#line 1 "Tweak.xm"
#include <substrate.h>

@interface CCUIScrollView
@property (nonatomic, assign, readwrite) UIColor *backgroundColor;
@end


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

@class CCUIScrollView; 
static void (*_logos_orig$_ungrouped$CCUIScrollView$setFrame$)(_LOGOS_SELF_TYPE_NORMAL CCUIScrollView* _LOGOS_SELF_CONST, SEL, CGRect*); static void _logos_method$_ungrouped$CCUIScrollView$setFrame$(_LOGOS_SELF_TYPE_NORMAL CCUIScrollView* _LOGOS_SELF_CONST, SEL, CGRect*); 

#line 7 "Tweak.xm"


static void _logos_method$_ungrouped$CCUIScrollView$setFrame$(_LOGOS_SELF_TYPE_NORMAL CCUIScrollView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect* arg) {
  NSInteger randRed = arc4random()%255;
  NSInteger randGreen = arc4random()%255;
  NSInteger randBlue = arc4random()%255;
  self.backgroundColor = [UIColor colorWithRed:randRed/255.0f green:randGreen/255.0f blue:randBlue/255.0f alpha:1.0f];

  _logos_orig$_ungrouped$CCUIScrollView$setFrame$(self, _cmd, arg);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIScrollView = objc_getClass("CCUIScrollView"); MSHookMessageEx(_logos_class$_ungrouped$CCUIScrollView, @selector(setFrame:), (IMP)&_logos_method$_ungrouped$CCUIScrollView$setFrame$, (IMP*)&_logos_orig$_ungrouped$CCUIScrollView$setFrame$);} }
#line 19 "Tweak.xm"
