#import <SpringBoard/SpringBoard.h>

%hook SBPowerDownController

-(void)orderFront{
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Woah!" message:@"You just pressed a button!" preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Close This Awesome Dialogue" style:UIAlertActionStyleDestructive handler:nil];
	[alert addAction:cancel];
	[self presentViewController:alert animated:YES completion:nil];
	//return %orig;
}
%end