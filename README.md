UITableViewCell Performance
=========================

We recently dropped support for iOS 6 at Slack, which opened up the opportunity to use TextKit and NSTextAttachments to replace a lot of the complex things we do to get custom emoji and links working. Would make our code a lot simpler to understand and write, for sure.

So, I wanted to do a quick test to see if reusable table cells would be comparable in speed to drawRect. This is the project I created to test that.

My conclusion: performance still isn't even close. drawRect still seems much faster than creating a view hierarchy in your table cells. We're going to continue using drawRect for the forseeable future.
