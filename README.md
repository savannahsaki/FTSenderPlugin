FTSenderPlugin
==============
Available from iOS5+

What is it?
---------------------
FTSenderPlugin is an easy to use UIViewController category that allows for
sending of in-app text messages and emails.

For example use see below or the sample project.

How to use?
---------------------
<strong>Step 1:</strong> Import the category

<blockquotes>
  <code>
      #import "UIViewController+FTSender.h"
  </code>
</blockquotes>

<strong>Step 2:</strong> Send an email or a text message

<strong>Text Message Example</strong>
<blockquotes>
  <code>
  <br>
      [self sendSMS:@"Hello World" recipientList:@[@"+1 (123) 123-1234"]];
  </code>
</blockquotes>

<strong>Email Example</strong>
<blockquotes>
  <code>
  <br>
      
      [self sendEmailWithSubject:@"Hello World?"
                            body:@"Hello World indeed!"
                      recipients:@[@"someMailAddress@gmail.com"]];
  </code>
</blockquotes>

Licence
---------------------
Copyright (c) 2013 Filip Troennberg

MIT License (MIT)
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
