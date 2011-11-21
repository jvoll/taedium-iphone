//
//  Activity.m
//  taedium
//
//  Created by Jason Voll on 11/20/11.
//  Copyright (c) 2011 Mozilla. All rights reserved.
//

#import "Activity.h"

// Constants
#define KEY_NAME @"name"
#define KEY_TAGS @"tags"
#define KEY_MIN_PEOPLE @"min_people"
#define KEY_MAX_PEOPLE @"max_people"
#define KEY_DESCRIPTION @"description"
#define KEY_INDOOR @"indoor"
#define KEY_OUTDOOR @"outdoor"
#define KEY_AROUND_TOWN @"around_town"
#define KEY_KID_FRIENDLY @"kid_friendly"
#define KEY_ADULTS_ONLY @"adults_only"
#define KEY_START_TIME @"start_time"
#define KEY_END_TIME @"end_time"
#define KEY_MIN_DURATION @"min_duration"
#define KEY_MAX_DURATION @"max_duration"
#define KEY_COST @"cost"
#define KEY_COST_PER_PERSON @"cost_is_per_person"
#define KEY_ADDRESS @"address"
#define KEY_LATITUDE @"lat"
#define KEY_LONGITUDE @"long"

@implementation Activity

@synthesize name;
@synthesize tags;
@synthesize minPeople;
@synthesize maxPeople;
@synthesize description;
@synthesize indoor;
@synthesize outdoor;
@synthesize aroundTown;
@synthesize kidFriendly;
@synthesize adultsOnly;
@synthesize startTime;
@synthesize endTime;
@synthesize minDuration;
@synthesize maxDuration;
@synthesize cost;
@synthesize costIsPerPerson;
@synthesize address;
@synthesize latitude;
@synthesize longitude;

+(Activity*) activityFromDict: (NSDictionary*) dict {
    Activity* activity = [[Activity alloc] init];
    [activity setName: [dict objectForKey:KEY_NAME]];
    //activity setTags: [dict objectForKey:KEY_TAGS];
    [activity setMinPeople: [dict objectForKey:KEY_MIN_PEOPLE]];
    [activity setMaxPeople: [dict objectForKey:KEY_MAX_PEOPLE]];
    [activity setIndoor: [Activity extractBool:dict :KEY_INDOOR]];
}

+(BOOL) extractBool: (NSDictionary*) dict: (NSString*) key {
    id boo = [dict objectForKey:key];
    
    return YES;
}

@end
