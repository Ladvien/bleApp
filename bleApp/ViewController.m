//
//  ViewController.m
//  bleApp
//
//  Created by Ladvien on 7/12/14.
//  Copyright (c) 2014 Honeysuckle Hardware. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UISlider *steerSlider;
@property (strong, nonatomic) IBOutlet UISlider *accelerationSlider;
@property (strong, nonatomic) IBOutlet UILabel *steerLabel;
@property (strong, nonatomic) IBOutlet UILabel *accelerationLabel;
@property (strong, nonatomic) IBOutlet UIView *tableView;
- (IBAction)menuButtonTouchUp:(id)sender;
- (IBAction)testButtonTouchUp:(id)sender;
- (IBAction)backFromDevicesButtonTouchUp:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.steerSlider setThumbImage:[UIImage imageNamed:@"track-thumb.png"] forState:UIControlStateNormal];
    [self.accelerationSlider setThumbImage:[UIImage imageNamed:@"track-thumb.png"] forState:UIControlStateNormal];
    
    [self.steerSlider setMaximumTrackImage:[UIImage alloc] forState:UIControlStateNormal];
    [self.accelerationSlider setMaximumTrackImage:[UIImage alloc] forState:UIControlStateNormal];
    
    self.accelerationSlider.transform = CGAffineTransformMakeRotation(M_PI_2);
    
    
    //Test
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuButtonTouchUp:(id)sender {
    self.tableView.hidden = false;
}

- (IBAction)testButtonTouchUp:(id)sender {
    
}

- (IBAction)backFromDevicesButtonTouchUp:(id)sender {
        self.tableView.hidden = true;
}
@end
