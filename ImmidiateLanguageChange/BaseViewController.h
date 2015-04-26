//
//  BaseViewController.h
//  ImmidiateLanguageChange
//
//  Created by Manuel Meyer on 26/04/15.
//  Copyright (c) 2015 Manuel Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController
-(void) languageDidChange;
- (IBAction)switchLanguage:(id)sender;
@end
