//
//  secondViewController.h
//  TableViewText
//
//  Created by Sathish on 21/07/15.
//  Copyright (c) 2015 Optisol Business Solution. All rights reserved.
//
@protocol customDelegate;
#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController
@property (nonatomic,strong) NSString *value;
@property(assign)int index;

@property (nonatomic,strong) id<customDelegate>delegate;

@end
@protocol customDelegate <NSObject>

-(void)changeValue:(NSString *)letters atIndex:(int)indexed;

@end