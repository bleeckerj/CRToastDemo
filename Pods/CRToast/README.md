# CRToast

`CRToast` is a library that allows you to easily create notifications that appear on top of or by pushing out the status bar or navigation bar. `CRToast` was originally based on [CWStatusBarNotification](https://github.com/cezarywojcik/CWStatusBarNotification).

![demo](screenshots/demo.gif)

## Requirements

`CRToast` uses ARC and requires iOS 7.0+. Works for iPhone and iPad.

## Installation

### CocoaPods

`pod 'CRToast', '~> 0.0.4'`

### Manual

Copy the folder `CRToast` to your project.

## Usage

Notifications can be created through `CRToastManager`'s `showNotificationWithOptions:completionBlock:` This will queue up a notification with the options specified. You provide options for your notification in a dictionary using the keys in `CRToast.h`

#### Example
This code

```	objc
NSDictionary *options = @{kCRToastTextKey : @"Hello World!",
                              kCRToastTextAlignmentKey : @(NSTextAlignmentCenter),
                              kCRToastBackgroundColorKey : [UIColor redColor],
                              kCRToastAnimationInTypeKey : @(CRToastAnimationTypeGravity),
                              kCRToastAnimationOutTypeKey : @(CRToastAnimationTypeGravity),
                              kCRToastAnimationInDirectionKey : @(CRToastAnimationDirectionLeft),
                              kCRToastAnimationOutDirectionKey : @(CRToastAnimationDirectionRight),
[CRToastManager showNotificationWithOptions:options
                            completionBlock:^{
                                NSLog(@"Completed");
                            }];
```

Generates this

![](screenshots/red_notification.gif)


## Customization

`CRToast` is very customizable. Taking a hint from `UIStringDrawing`'s `drawInRect:withAttributes:` book, notifications are created with dictionaries filled with all their options.

### Customizing Appearance

`CRToast` allows for setting of

- Alert Text
- Text Color
- Text Font
- Text Alignment
- Text Color
- Text Shadow Color
- Text Shadow Offset
- Text Max Number of Lines
- Left aligned image

### Customizing Animation

`CRToast` also allows for animation customization. This includes.

- Animation Type (Linear, Spring or Gravity)
- Animation Physics Coefficients (Spring Damping, Spring Initial Velocity, Gravity Magnitude)
- Presentation Type (Slide over bars or push content out)
- Direction (Enter and exit in any direction)
- Enter, Stay on Screen and Exit Timing

### Setting Defaults

There are sane defaults set for all properties, however you can set a default set of options for your application's notifications using `CRToastManagers`'s `setDefaultOptions:`.

## License

    The MIT License (MIT)

    Copyright (c) 2013 Collin Ruffenach

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.