//
//  UICustiomActivity.h
//  GazeShareExtension
//
//  Created by 汤军 on 2019/5/8.
//  Copyright © 2019 汤军. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICustiomActivity : UIActivity

@property(copy, nonatomic, readonly)NSString *title;

@property(copy, nonatomic, readonly)NSString *type;

@property(strong, nonatomic, readonly)UIImage *image;

@property(strong, nonatomic, readonly)NSURL *url;

@property(strong, nonatomic, readonly)NSArray *shareContexts;

@property(assign, nonatomic, readonly)UIActivityCategory activity;

- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image url:(NSURL *)url type:(NSString *)type shareContexts:(NSArray *)shareContexts activity:(UIActivityCategory)activity;
@end

NS_ASSUME_NONNULL_END
