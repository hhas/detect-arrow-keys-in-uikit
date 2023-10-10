//

#import "KeyWatcher.h"

@implementation KeyWatcher


- (NSArray*)keyCommands { // iOS 7.0+
    static NSArray *watchesKeys = nil;
    if (!watchesKeys) {
        watchesKeys = @[
            [UIKeyCommand keyCommandWithInput: @" "                 modifierFlags: 0 action: @selector(keyPressed:)],
            [UIKeyCommand keyCommandWithInput: @"m"                 modifierFlags: 0 action: @selector(keyPressed:)],
            [UIKeyCommand keyCommandWithInput: UIKeyInputUpArrow    modifierFlags: 0 action: @selector(keyPressed:)],
            [UIKeyCommand keyCommandWithInput: UIKeyInputDownArrow  modifierFlags: 0 action: @selector(keyPressed:)],
            [UIKeyCommand keyCommandWithInput: UIKeyInputLeftArrow  modifierFlags: 0 action: @selector(keyPressed:)],
            [UIKeyCommand keyCommandWithInput: UIKeyInputRightArrow modifierFlags: 0 action: @selector(keyPressed:)],
            [UIKeyCommand keyCommandWithInput: UIKeyInputEscape     modifierFlags: 0 action: @selector(keyPressed:)]
        ];
        if (@available(iOS 15, *)) {
            for (UIKeyCommand *command in watchesKeys) {
                command.wantsPriorityOverSystemBehavior = YES;
            }
        }
    }
    //NSLog(@"KeyWatcher.keyCommands\n");
    return watchesKeys;
}


@end
