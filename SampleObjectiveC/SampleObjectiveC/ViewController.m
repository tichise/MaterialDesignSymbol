//
//  ViewController.m
//  SampleObjectiveC
//
//  Created by ichise on 2017/07/31.
//

#import "ViewController.h"
@import MaterialDesignSymbol;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MaterialDesignSymbol *symbol = [[MaterialDesignSymbol alloc] initWithText:[MaterialDesignIcon home48px] size:30];
    [symbol addAttributeWithAttributeName:NSForegroundColorAttributeName value:[UIColor blackColor]];
    _sampleImageView.image = [symbol imageWithSize:CGSizeMake(30, 30)];
    
    _sampleLabel.font = [MaterialDesignFont fontOfSize:20];
    _sampleLabel.text = [MaterialDesignIcon clear48px];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
