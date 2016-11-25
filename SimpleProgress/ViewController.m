//
//  ViewController.m
//  SimpleProgress
//
//  Created by 赵诣 on 16/2/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "SHLineGraphView.h"
#import "SHPlot.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SHLineGraphView *_lineGraph = [[SHLineGraphView alloc] initWithFrame:CGRectMake(0, 50, 414 - 20, 600)];
    NSDictionary *_themeAttributes = @{
                                       kXAxisLabelColorKey : [UIColor grayColor],//x轴文字颜色
                                       kXAxisLabelFontKey : [UIFont fontWithName:@"TrebuchetMS" size:10],//x轴字体大小
                                       kYAxisLabelColorKey : [UIColor grayColor],//y轴文字颜色
                                       kYAxisLabelFontKey : [UIFont fontWithName:@"TrebuchetMS" size:10],//y轴字体大小
                                       kYAxisLabelSideMarginsKey : @20, //y轴label宽度
                                       kPlotBackgroundLineColorKye : [UIColor lightGrayColor]//分割线颜色
                                       };
    _lineGraph.themeAttributes = _themeAttributes;
    _lineGraph.yAxisRange = @(130);
    _lineGraph.yAxisSuffix = @"K";
    _lineGraph.xAxisValues = @[
                               @{ @1 : @"1a" },
                               @{ @2 : @"2a" },
                               @{ @3 : @"3a" },
                               @{ @4 : @"4a" },
                               @{ @5 : @"5a" },
                               @{ @6 : @"6a" },
                               @{ @7 : @"7a" },
                               @{ @8 : @"8a" },
                               @{ @9 : @"9a" },
                               @{ @10 : @"10a" }
                               ];
    SHPlot *_plot1 = [[SHPlot alloc] init];
    SHPlot *_plot2 = [[SHPlot alloc] init];
    _plot1.plottingValues = @[
                              @{ @1 : @65.8 },
                              @{ @2 : @20 },
                              @{ @3 : @23 },
                              @{ @4 : @5 },
                              @{ @5 : @12.3 },
                              @{ @6 : @45.8 },
                              @{ @7 : @36 },
                              @{ @8 : @120 },
                              @{ @9 : @65 },
                              @{ @10 : @10 }
                              ];
    _plot2.plottingValues = @[
                              @{ @1 : @35.8 },
                              @{ @2 : @40 },
                              @{ @3 : @13 },
                              @{ @4 : @50 },
                              @{ @5 : @19.3 },
                              @{ @6 : @15.8 },
                              @{ @7 : @79 },
                              @{ @8 : @88 },
                              @{ @9 : @25.3 },
                              @{ @10 : @100 }
                              ];
    
    //点击的提示
    NSArray *arr = @[@"no.1", @"no.2", @"no.3", @"no.4", @"no.5", @"no.6" , @"no.7" , @"no.8", @"no.9", @"no.10"];
    _plot1.plottingPointsLabels = arr;
    _plot2.plottingPointsLabels = arr;
    
    
    NSDictionary *_plotThemeAttributes1 = @{
                                            kPlotFillColorKey : [UIColor colorWithRed:1 green:0 blue:0 alpha:0],//阴影颜色
                                            kPlotStrokeWidthKey : @3,//线宽
                                            kPlotStrokeColorKey : [UIColor greenColor],//线色
                                            kPlotPointFillColorKey : [UIColor clearColor],//点色
                                            kPlotPointValueFontKey : [UIFont fontWithName:@"TrebuchetMS" size:18]
                                            };
    NSDictionary *_plotThemeAttributes2 = @{
                                            kPlotFillColorKey : [UIColor colorWithRed:0 green:1 blue:0 alpha:0],//阴影颜色
                                            kPlotStrokeWidthKey : @3,//线宽
                                            kPlotStrokeColorKey : [UIColor redColor],//线色
                                            kPlotPointFillColorKey : [UIColor clearColor],//点色
                                            kPlotPointValueFontKey : [UIFont fontWithName:@"TrebuchetMS" size:18]
                                            };
    
    _plot1.plotThemeAttributes = _plotThemeAttributes1;
    _plot2.plotThemeAttributes = _plotThemeAttributes2;
    [_lineGraph addPlot:_plot1];
    [_lineGraph addPlot:_plot2];
    [_lineGraph setupTheView];
    
    [self.view addSubview:_lineGraph];
}



@end
