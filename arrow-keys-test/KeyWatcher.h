//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol KeyWatcher <NSObject>

- (void)keyPressed: (UIKeyCommand *)key; // stops compiler complaining about @selector(keyPressed:)

@end




@interface KeyWatcher : UITextField

@end

NS_ASSUME_NONNULL_END
