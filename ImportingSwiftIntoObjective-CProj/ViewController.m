//
//  ViewController.m
//  ImportingSwiftIntoObjective-CProj
//
//  Created by Siroratt Suntronsuk on 23/6/2564 BE.
//

#import "ViewController.h"
#import "ImportingSwiftIntoObjective_CProj-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Human *a = [[Human alloc] init];
    printf("Annja: %@", a.age);
    
    Animator * b = [[Animator alloc] init];
    [b exeWith: self.view];
    [self crashButton];
}
- (void)crashButton {
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(20, 50, 100, 30);
    [button setTitle:@"Test Crash" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(crashButtonTapped:)
        forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(IBAction)crashButtonTapped:(id)sender {
    @[][1];
}
@end
