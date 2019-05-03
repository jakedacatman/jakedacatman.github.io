#include <substrate.h>
#include <UIKit/UIStatusBar.h>
#import <CoreGraphics/CoreGraphics.h
#include <SpringBoard/SpringBoard.h>

%hook SpringBoard

%property (nonatomic, assign) UIWindow win;

-(void) applicationDidFinishLaunching:(UIApplication *)arg
{
  CGRect screen = [UIScreen mainScreen].bounds;
  CGRect frame = CGRectMane(-40.5, 0, screen.size.width + 81, screen.size.height + 200);
  
  self.window = [[UIWindow alloc] initWithFrame:screen];
  self.window.windowLevel = UIWindowLevelStatusBar - 10;
  self.window.hidden = NO; 

  UIView *notch = [[UIView alloc] initWithFrame:frame];
  NSInteger randRed = arc4random()%255;
  NSInteger randGreen = arc4random()%255;
  NSInteger randBlue = arc4random()%255;
  notch.layer.borderColor = [UIColor colorWithRed:randRed/255.0f green:randGreen/255.0f blue:randBlue/255.0f alpha:1.0f];
  notch.layer.borderWidth = 40.0f;

  [notch setClipsToBounds:YES];
  [notch.layer setMasksToBounds:YES];
  notch.layer.cornerRadius = 75;
  self.window.userInteractionEnabled = NO;
  [self.window addSubview: notch];

  %orig;
}

%end
