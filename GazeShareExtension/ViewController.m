//
//  ViewController.m
//  GazeShareExtension
//
//  Created by 汤军 on 2019/5/8.
//  Copyright © 2019 汤军. All rights reserved.
//

#import "ViewController.h"
#import "UICustiomActivity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}
- (IBAction)shareExtension:(id)sender {

    NSString *textToShare = @"我是且行且珍惜_iOS，欢迎关注我！";
    UIImage *imageToShare = [UIImage imageNamed:@"icon_40pt"];
    NSURL *urlToShare = [NSURL URLWithString:@"openCaze:"];

    //自定义 customActivity继承于UIActivity,创建自定义的Activity加在数组Activities中。
    UICustiomActivity *custom = [[UICustiomActivity alloc] initWithTitle:textToShare image:imageToShare url:urlToShare type:nil shareContexts:nil activity:UIActivityCategoryShare];
    NSArray *activities = @[custom];

    NSArray *activityItems = @[urlToShare,textToShare,imageToShare];
    UIActivityViewController *activity = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:activities];
    activity.excludedActivityTypes = @[UIActivityTypePostToTwitter, UIActivityTypePostToWeibo, UIActivityTypeMessage, UIActivityTypeMail, UIActivityTypePrint, UIActivityTypeCopyToPasteboard, UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll, UIActivityTypeAddToReadingList, UIActivityTypePostToFlickr, UIActivityTypePostToVimeo, UIActivityTypePostToTencentWeibo, UIActivityTypeAirDrop, UIActivityTypeOpenInIBooks, UIActivityTypeMarkupAsPDF, @"com.tencent.xin.sharetimeline"];
     [self.navigationController presentViewController:activity animated:YES completion:nil];
    activity.completionWithItemsHandler = ^(UIActivityType  _Nullable activityType, BOOL completed, NSArray * _Nullable returnedItems, NSError * _Nullable activityError) {
        NSLog(@"activityType -- %@", activityType);
        NSLog(@"completed -- %d", completed);
        NSLog(@"returnedItems -- %@", returnedItems);
        NSLog(@"activityError -- %@", activityError);
    };
}

@end
