//
//  ViewController.m
//  Demo
//
//  Created by cheyipai on 2017/8/25.
//  Copyright © 2017年 cheyipai. All rights reserved.
//

#import "ViewController.h"
#import "DefineBtn.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    [self testHitTestV];
}
-(void)testHitTestV
{
    DefineBtn *button1 =  [[DefineBtn alloc]init];
    [button1 setTitle:@"button1" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button1 setFrame:CGRectMake(0,100,[UIScreen mainScreen].bounds.size.width,200)];
    [button1 addTarget:self action:@selector(btn1Click:) forControlEvents:UIControlEventTouchUpInside];
    [button1 setBackgroundColor:[UIColor brownColor]];
    [self.view addSubview:button1];
    
    DefineBtn *button2 =  [[DefineBtn alloc]init];
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button2 setTitle:@"button2" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(btn2Click:) forControlEvents:UIControlEventTouchUpInside];
    [button2 setFrame:CGRectMake(0,300,[UIScreen mainScreen].bounds.size.width,200)];
    [button2 setBackgroundColor:[UIColor brownColor]];
    [self.view addSubview:button2];
    
    DefineBtn *button3 =  [[DefineBtn alloc]init];
    [button3 setTitle:@"button3" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(btn3Click:) forControlEvents:UIControlEventTouchUpInside];
    [button3 setBackgroundColor:[UIColor grayColor]];
    [button3 setFrame:CGRectMake(50,150,[UIScreen mainScreen].bounds.size.width - 100,300)];
    [self.view addSubview:button3];
    
}

-(void)btn1Click:(id)sender
{
    NSLog(@"button1");
}
-(void)btn2Click:(id)sender
{
    NSLog(@"button2");
}
-(void)btn3Click:(id)sender
{
    NSLog(@"button3");
}
/*
 1.button1,button2,button3三个button是同级的，把它们加入到父视图中的顺序为button1,button2,button3,且button3与button1，button2的frame是有重叠的。
 2.在点击button3时，只做了button3的命中测试，且命中；点击button1时，命中测试的顺序为button3,button2,button1,命中button1;点击button2时，命中测试的顺序为button3,button2,命中button2.
 结论：1.一旦命中一个，就不再进行递归的命中测试了。
      2.同级命中测试的顺序，是与加入到父视图中的顺序有关的，越先加入，进行命中测试越靠后，认为系统在取进行命中测试的视图时，是从view的subviews数组取的。
 
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
