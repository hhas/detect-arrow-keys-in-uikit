How to Detect Arrow Keys in UIKit

Problem: 

When implemented on a UIView or ViewController class, UIKeyCommand and 
-pressesBegan:withEvent: can detect 'normal' keys (letters, digits, etc) 
but not the arrow keys on a physical keyboard.

Solution: 

Kludge a UITextField subclass into the responder chain. And pray Apple
doesn't break this in a future iOS update.

Implementation:

1. Define a UITextField subclass, KeyWatcher, that implements
   -keyPresses.

2. In -[ViewController viewDidLoad], instantiate KeyWatcher.

3. Add the watcher to the controller's view.

4. Hide the on-screen keyboard bar:

    watcher.autocorrectionType = UITextAutocorrectionTypeNo;
    watcher.inputAssistantItem.leadingBarButtonGroups = @[];
    watcher.inputAssistantItem.trailingBarButtonGroups = @[];

5. In -[ViewController viewDidAppear:], add the watcher to the beginning
 of the responder chain so it handles input events.

--

This code is released into the Public Domain.
