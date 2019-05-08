//
//  UICustiomActivity.m
//  GazeShareExtension
//
//  Created by 汤军 on 2019/5/8.
//  Copyright © 2019 汤军. All rights reserved.
//

#import "UICustiomActivity.h"

@implementation UICustiomActivity

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image url:(NSURL *)url type:(NSString *)type shareContexts:(NSArray *)shareContexts activity:(UIActivityCategory)activity{
    if (self = [super init]) {
        _title = title;
        _image = image;
        _url = url;
        _type = type;
        _shareContexts = shareContexts;
        _activity = activity;
    }
    return self;
}

//- (UIActivityType)activityType{
//    return _type;
//}
- (NSString *)activityTitle{
    return _title;
}
- (UIImage *)activityImage{
    return _image;
}
- (UIActivityCategory)activityCategory{
    return _activity;
}
- (NSURL *)activityUrl{
    return _url;
}

@end
