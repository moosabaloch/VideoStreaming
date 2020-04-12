//
//  ViewController.m
//  VideoStreaming
//
//  Created by Moosa Baloch on 04/04/2020.
//  Copyright © 2020 KoderLabs. All rights reserved.
//

#import "ViewController.h"
#import "LFLivePreview.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:[[LFLivePreview alloc] initWithFrame:self.view.bounds]];
}


@end
