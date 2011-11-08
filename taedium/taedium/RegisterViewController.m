//
//  RegisterViewController.m
//  taedium
//
//  Created by Jason Voll on 11/6/11.
//  Copyright (c) 2011 Mozilla. All rights reserved.
//

#import "RegisterViewController.h"

@implementation RegisterViewController

- (id)init
{
    self = [super initWithNibName:@"Register" bundle:[NSBundle mainBundle]];
    self.title = @"Register";
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
/*- (void)loadView
{
    self.title = @"Register";
}*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
