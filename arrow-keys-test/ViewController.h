//
//  ViewController.h
//  key-test
//

#import <UIKit/UIKit.h>

#import "KeyWatcher.h"


@interface ViewController : UIViewController{
    
    KeyWatcher *watcher;
    
    IBOutlet UILabel *label; // display the last pressed button's UIKeyCommand

}


- (void)keyPressed: (UIKeyCommand *)key;


@end

