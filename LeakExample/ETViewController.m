//
//  ETViewController.m
//  LeakExample
//
//  Created by PJ Gray on 3/22/13.
//  Copyright (c) 2013 Say Goodnight Software. All rights reserved.
//

#import "ETViewController.h"
#import "AFNetworking.h"

@interface ETViewController ()

@end

@implementation ETViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    AFHTTPClient* client = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:@"https://api.github.com/"]];
    [client registerHTTPOperationClass:[AFJSONRequestOperation class]];
    [client setDefaultHeader:@"Accept" value:@"application/json"];
    
    [client getPath:@"gitignore/templates/Objective-C" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"RESP: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
}
@end
