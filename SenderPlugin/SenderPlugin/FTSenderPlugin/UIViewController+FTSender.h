//
//  UIViewController+SenderPlugin.h
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

#import <UIKit/UIKit.h>
#import <MessageUI/MFMessageComposeViewController.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface UIViewController (FTSender)
<MFMessageComposeViewControllerDelegate, MFMailComposeViewControllerDelegate>

/**
 * Shows a view controller identical to the built in text message application
 * with the specificed message body and with the specified recipients.
 *
 * @param bodyofMessage The actual text message
 * @param recipients The phone numbers of the text message reciever
 */
- (void)sendSMS:(NSString *)bodyOfMessage
  recipientList:(NSArray *)recipients;

/**
 * Shows a view controller identical to the built in mail application's
 * compose email interface. May be exented to include additional information
 * e.g. CC.
 *
 * @param subject The mail's subject
 * @param mailBody The content of the email to be sent
 * @param recipients The email addresses of all recipients of the email.
 */
- (void)sendEmailWithSubject:(NSString *)subject
                       body:(NSString *)mailBody
                 recipients:(NSArray *)recipients;

@end
