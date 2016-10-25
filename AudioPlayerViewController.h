//
//  AudioPlayerViewController.h
//  Audio_Video_Player
//
//  Created by HealthOne on 25/10/16.
//  Copyright © 2016 akash. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AudioPlayerViewController : UIViewController

- (IBAction)btnPlayCLicked:(UIButton *)sender;
- (IBAction)btnStopClicked:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)sliderValueChanged:(UISlider *)sender;

@end
