//
//  ActivitiesFetcher.h
//  taedium
//
//  Created by Jason Voll on 11/20/11.
//  Copyright (c) 2011 Mozilla. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GTMHTTPFetcher.h"

// Constants
#define ACTIVITY_API @"activities"
#define ACTIVITY_SEARCH_API @"search"

@interface ActivitiesFetcher : NSObject {
    NSArray* fetchedActivities;
}

@property (nonatomic, copy) NSArray* fetchedActivites;

-(void) searchActivities;
-(void) fetchActivitiesDelegate: (GTMHTTPFetcher *)fetcher finishedWithData:(NSData *)retrievedData error:(NSError *)error;

@end
