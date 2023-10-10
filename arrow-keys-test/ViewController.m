//
//  ViewController.m
//  key-test
//

#import "ViewController.h"


@interface ViewController () 
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    watcher = [[KeyWatcher alloc] initWithFrame: CGRectMake(0, 0, 0, 0)];
    [self.view addSubview: watcher];
    
    // hide the on-screen keyboard bar
    watcher.autocorrectionType = UITextAutocorrectionTypeNo;
    watcher.inputAssistantItem.leadingBarButtonGroups = @[];
    watcher.inputAssistantItem.trailingBarButtonGroups = @[];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    [watcher becomeFirstResponder];
}


// handle -keyPressed: messages delegated along the responder chain from KeyWatcher
- (void)keyPressed: (UIKeyCommand *)key {
    //NSLog(@"keyPressed: %@", key);
    label.text = [NSString stringWithFormat: @"keyPressed: '%@'", key];
}


@end
