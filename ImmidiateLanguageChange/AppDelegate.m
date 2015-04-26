//
//  AppDelegate.m
//  ImmidiateLanguageChange
//
//  Created by Manuel Meyer on 26/04/15.
//  Copyright (c) 2015 Manuel Meyer. All rights reserved.
//

#import "AppDelegate.h"
#import "NSBundle+Language.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageWillChange:) name:@"LANGUAGE_WILL_CHANGE" object:nil];

    NSString *targetLang = [[NSUserDefaults standardUserDefaults] objectForKey:@"selectedLanguage"];
    [NSBundle setLanguage:targetLang?:@"en"];
    return YES;
}

-(void)languageWillChange:(NSNotification *) noti
{
    NSString *targetLang = [noti object];
    [[NSUserDefaults standardUserDefaults] setObject:targetLang forKey:@"selectedLanguage"];
    
    [NSBundle setLanguage:targetLang];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LANGUAGE_DID_CHANGE" object:targetLang];
}


@end
