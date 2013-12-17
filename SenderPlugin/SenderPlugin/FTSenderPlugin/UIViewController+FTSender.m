//
//  UIViewController+SenderPlugin.m
//  The MIT License (MIT)
//
//  Copyright (c) 2013 Filip Troennberg
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "UIViewController+FTSender.h"
#import <MessageUI/MFMessageComposeViewController.h>
#import <MessageUI/MFMailComposeViewController.h>

@implementation UIViewController (SenderPlugin)

- (void)sendSMS:(NSString *)bodyOfMessage recipientList:(NSArray *)recipients {
    
    MFMessageComposeViewController *textController = [MFMessageComposeViewController new];
    
    if(textController && MFMessageComposeViewController.canSendText == YES) {
        
        textController.body = bodyOfMessage;
        textController.recipients = recipients;
        textController.messageComposeDelegate = self;
        
        [self presentViewController:textController animated:YES completion:nil];
        
    }
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    if (result == MessageComposeResultCancelled) {
        // User canceled
    } else if (result == MessageComposeResultSent) {
        // Bomb's away
    } else {
        // Couldn't send
    }
}

- (void)sendEmailWithSubject:(NSString *)subject body:(NSString *)mailBody recipients:(NSArray *)recipients {
    
    MFMailComposeViewController *mailController = [MFMailComposeViewController new];
    
    if(mailController && MFMailComposeViewController.canSendMail == YES) {
        
        mailController.mailComposeDelegate = self;
        mailController.toRecipients = recipients;
        mailController.subject = subject;
        [mailController setMessageBody:mailBody isHTML:NO];
        
        [self presentViewController:mailController animated:YES completion:nil];
        
    }
    
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    if(result == MFMailComposeResultCancelled) {
        // User canceled
    } else if(result == MFMailComposeResultSent) {
        // Bomb's away
    } else {
        // Could not send mail
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end

