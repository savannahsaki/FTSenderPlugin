//
//  ViewController.m
//  SenderPlugin
//
//  Created by Filip Trönnberg on 2013-12-17.
//  Copyright (c) 2013 Filip Trönnberg. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+FTSender.h" // <-- Import

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)sendTextMessage:(id)sender {
    [self sendSMS:@"Hello World"
    recipientList:@[@"+1 (123) 123-1234", @"3211233214"]];
}

- (IBAction)sendEmail:(id)sender {
    [self sendEmailWithSubject:@"Hello World?"
                          body:@"Hello World indeed!"
                    recipients:@[@"someMailAddress@gmail.com"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
