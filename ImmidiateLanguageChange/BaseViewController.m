//
//  BaseViewController.m
//  ImmidiateLanguageChange
//
//  Created by Manuel Meyer on 26/04/15.
//  Copyright (c) 2015 Manuel Meyer. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
@property (weak, nonatomic) IBOutlet UIButton *englishButton;
@property (weak, nonatomic) IBOutlet UIButton *spanishButton;

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageDidChangeNotification:) name:@"LANGUAGE_DID_CHANGE" object:nil];
}

- (IBAction)switchLanguage:(id)sender {
    
    NSString *localString;
    if (self.englishButton == sender) {
        localString = @"en";
    } else if(self.spanishButton == sender){
        localString = @"es";
    }
    
    if (localString) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"LANGUAGE_WILL_CHANGE" object:localString];
    }
}

-(void)languageDidChangeNotification:(NSNotification *)notification
{
    [self languageDidChange];
}

-(void)languageDidChange
{

}

@end
