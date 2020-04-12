//
//  PlaybackViewController.m
//  VideoStreaming
//
//  Created by Moosa Baloch on 10/04/2020.
//  Copyright © 2020 KoderLabs. All rights reserved.
//

#import "PlaybackViewController.h"
//#import "VDLViewController.h"

#import <MobileVLCKit/MobileVLCKit.h>


@interface PlaybackViewController ()<VLCMediaPlayerDelegate>
{
VLCMediaPlayer *mediaplayer;
}
@end

@implementation PlaybackViewController
- (IBAction)playPauseAction:(id)sender {
    
    if (mediaplayer.isPlaying){
        [mediaplayer pause];
    }
    
    [mediaplayer play];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated{
        /* setup the media player instance, give it a delegate and something to draw into */
        mediaplayer = [[VLCMediaPlayer alloc] init];
        mediaplayer.delegate = self;
        mediaplayer.drawable = self.movieView;
        
        /* create a media object and give it to the player */
        mediaplayer.media = [VLCMedia mediaWithURL:[NSURL URLWithString:@"rtmp://192.168.0.103:1935/live/stream"]];
    //    mediaplayer.audioChannel = 2;
    //    mediaplayer.audio.volume = 10;

}

@end
