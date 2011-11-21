//
//  ActivitiesFetcher.m
//  taedium
//
//  Created by Jason Voll on 11/20/11.
//  Copyright (c) 2011 Mozilla. All rights reserved.
//

#import "ActivitiesFetcher.h"
#import "GlobalStore.h"
#import "GTMStringEncoding.h"
#import "SBJsonParser.h"
#import "Activity.h"

@implementation ActivitiesFetcher
@synthesize fetchedActivites;

-(void) searchActivities {
    
    NSString* address = [NSString stringWithFormat:@"%@/%@/%@", API_URL, ACTIVITY_API, ACTIVITY_SEARCH_API];
    NSURL* url = [NSURL URLWithString:address];
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url];
    
    // if the user is logged in, send their credentials over
    if ([[GlobalStore getInstance] loggedIn]) {
        NSString* userPass = [[[GlobalStore getInstance] account] getUserPassString];
        NSString* encodedUserPass = [[GTMStringEncoding rfc4648Base64WebsafeStringEncoding] encodeString:userPass];
        NSString* header = [NSString stringWithFormat:@"%@%@", @"Basic ", encodedUserPass];
        [request setValue:header forHTTPHeaderField:@"authorization"];
    }
    
    GTMHTTPFetcher* activityFetcher = [GTMHTTPFetcher fetcherWithRequest:request];
    [activityFetcher beginFetchWithDelegate:self didFinishSelector:@selector(fetchActivitiesDelegate:finishedWithData:error:)];
    
}

-(void) fetchActivitiesDelegate:(GTMHTTPFetcher *)fetcher finishedWithData:(NSData *)retrievedData error:(NSError *)error {
    if (error != nil) {
        // failure
        // TODO display a message of some sort
    } else {
        // fetch succeeded
        NSString* jsonString = [[NSString alloc] initWithData:retrievedData
                                                     encoding:NSUTF8StringEncoding];
        
        // Parse json
        SBJsonParser* parser = [SBJsonParser new];
        NSArray* activitiesJson = [parser objectWithString:jsonString error:nil];
        NSMutableArray* activities = [[NSMutableArray alloc] initWithCapacity:[activitiesJson count]];
        for (int i = 0; i< [activitiesJson count]; i++) {
            NSNumber* index = [NSNumber numberWithInt:i];
            [activities insertObject:[Activity activityFromDict:[activitiesJson objectAtIndex:index]] atIndex:index];
        }
    }
}

@end
