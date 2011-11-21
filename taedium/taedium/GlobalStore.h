//
//  GlobalStore.h
//  taedium
//
//  Created by Jason Voll on 11/19/11.
//  Copyright (c) 2011 Mozilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "ActivitiesFetcher.h"

// Definte constants here
#define API_URL @"http://taedium.me/api"

@interface GlobalStore : NSObject {
    Account* account;
    ActivitiesFetcher* activitiesFetcher;
    BOOL loggedIn;
}


@property (nonatomic, copy) Account* account;
@property (nonatomic, copy) ActivitiesFetcher* activitiesFetcher;
@property (nonatomic, assign) BOOL loggedIn;

+ (GlobalStore*)getInstance;
@end
