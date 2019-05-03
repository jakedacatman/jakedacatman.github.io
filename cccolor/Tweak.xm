#include <substrate.h>

@interface CCUIScrollView
@property (nonatomic, assign, readwrite) UIColor *backgroundColor;
@end

%hook CCUIScrollView
-(void) setFrame:(CGRect*)arg
{
  NSInteger randRed = arc4random()%255;
  NSInteger randGreen = arc4random()%255;
  NSInteger randBlue = arc4random()%255;
  self.backgroundColor = [UIColor colorWithRed:randRed/255.0f green:randGreen/255.0f blue:randBlue/255.0f alpha:1.0f];

  %orig;
}

%end
