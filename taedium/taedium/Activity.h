//
//  Activity.h
//  taedium
//
//  Created by Jason Voll on 11/20/11.
//  Copyright (c) 2011 Mozilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GTMHTTPFetcher.h"

@interface Activity : NSObject {
    NSString* name;
    NSArray* tags;
    NSNumber* minPeople;
    NSNumber* maxPeople;
    NSString* description;
    BOOL indoor;
    BOOL outdoor;
    BOOL aroundTown;
    BOOL kidFriendly;
    BOOL adultsOnly;
    NSNumber* startTime;
    NSNumber* endTime;
    NSNumber* minDuration;
    NSNumber* maxDuration;
    NSNumber* cost;
    BOOL costIsPerPerson;
    NSString* address;
    NSNumber* latitude;
    NSNumber* longitude;
}

@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSArray* tags;
@property (nonatomic, copy) NSNumber* minPeople;
@property (nonatomic, copy) NSNumber* maxPeople;
@property (nonatomic, copy) NSString* description;
@property (nonatomic, assign) BOOL indoor;
@property (nonatomic, assign) BOOL outdoor;
@property (nonatomic, assign) BOOL aroundTown;
@property (nonatomic, assign) BOOL kidFriendly;
@property (nonatomic, assign) BOOL adultsOnly;
@property (nonatomic, copy) NSNumber* startTime;
@property (nonatomic, copy) NSNumber* endTime;
@property (nonatomic, copy) NSNumber* minDuration;
@property (nonatomic, copy) NSNumber* maxDuration;
@property (nonatomic, copy) NSNumber* cost;
@property (nonatomic, assign) BOOL costIsPerPerson;
@property (nonatomic, copy) NSString* address;
@property (nonatomic, copy) NSNumber* latitude;
@property (nonatomic, copy) NSNumber* longitude;

+(Activity*) activityFromDict: (NSDictionary*) dict;
+(BOOL) extractBool: (NSDictionary*) dict: (NSString*) key;

@end
