//
//  NFLViewController.m
//  CRToastDemo
//
//  Created by Julian Bleecker on 3/25/14.
//  Copyright (c) 2014 Julian Bleecker. All rights reserved.
//

#import "NFLViewController.h"
#import <CRToast.h>

@interface NFLViewController ()

@end

@implementation NFLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@", [[[UIApplication sharedApplication]delegate]window]);
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(80, 150, 150, 50)];
    [button setBackgroundColor:[UIColor lightGrayColor]];
    [button setTitle:@"Toast" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)buttonPressed:(id) sender
{
    
    NSDictionary *options = @{
                              kCRToastTextKey : @"Status Bar Test",
                              kCRToastTextAlignmentKey : @(NSTextAlignmentCenter),
                              kCRToastBackgroundColorKey : [UIColor redColor],
                              kCRToastAnimationInTypeKey : @(CRToastAnimationTypeGravity),
                              kCRToastAnimationOutTypeKey : @(CRToastAnimationTypeGravity),
                              kCRToastAnimationInDirectionKey : @(CRToastAnimationDirectionLeft),
                              kCRToastAnimationOutDirectionKey : @(CRToastAnimationDirectionRight),
                              kCRToastNotificationTypeKey : @(CRToastTypeNavigationBar)
                              };
    [CRToastManager showNotificationWithOptions:options
                                completionBlock:^{
                                    NSLog(@"Completed");
                                }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
