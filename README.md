# TPWalkerFrame
## 一个基于frame的布局工具
### 使用方法如下:

```
1. 导入"UIView+WalkerFrame.h"
2. 代码:
  (1) 加入到父控件中
        [self addSubview:self.image];
        [self addSubview:self.label1];
        [self addSubview:self.label2];
  (2) 设置frame
        //距离左边距离
        [self.image left_Margin:10 ToView:self];
        //设置尺寸
        self.image.size = CGSizeMake(20, 20);
        //centerY对齐
        [self.image centerY_EqualsView:self];
    
        [self.label1 left_Margin:20 ToView:self.image];
        //距离顶部
        [self.label1 top_Margin:5 ToView:self];
        [self.label1 sizeToFit];
    
        [self.label2 left_Margin:20 ToView:self.image];
        [self.label2 top_Margin:10 ToView:self.label1];
        [self.label2 sizeToFit];
3. 注意点:
    --->必须先加入到父view中
    --->设置center,centerX,centerY的时候需要先设置控件大小
