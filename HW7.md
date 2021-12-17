# 第七週習題
## mult
```asm
0. @10     // 第一個數為 10
1. D=A     // 暫存 D = 10
2. @0      // 第一個數
3. M=D     // 設值為 10

//設第二個值
4. @2      // 第二個數
5. D=A     // 暫存 D = 2
6. @1      // 第二個數
7. M=D     // 設值為 2


// 迴圈 計算 10*2
// 計算迴圈跑幾次
8. @12
9. M=D

// 取得第一個值
10. @0
11. D=M

// 總和
12. @2
13. M=D+M

// 計算迴圈已跑幾次
14. @12
15. M=M-1
16. M;JNE   // 跳回第12行 M!=0 跳

@17     //停止
0;JMP

```
![](https://github.com/yucing/co110a/blob/master/picture/mult1.png)
![](https://github.com/yucing/co110a/blob/master/picture/mult2.png)

## fill
```asm
0. @24575  // 螢幕最大值
1. D=A
2. @8      // 設螢幕最大值
3. M=D


4. @5      //設定螢幕變黑/白 (-1/0)
5. M=0     //螢幕變白

6. @24576  // 鍵盤是否按下
7. D=M
8. @27
9. D;JNE   //  D 不為 0 時，跳轉到 27 行

10. @16383  // 螢幕最小值-1
11. D=A
12. @10     // 設定螢幕值
13. M=D
14. @5      // 設定變黑/變白
15. D=M
16. @10
17. M=M+1   // 螢幕值+1
18. A=M     // 第幾個螢幕
19. M=D     //變黑/變白

20. D=A     // 跑第幾個螢幕
21. @8      // 跑幾圈
22. D=M-D   // 24575-螢幕值
23. @13
24. D;JNE   // D 不為 0 時 跳到第 13 行

25. @4      // 卡迴圈
26. 0;JMP

27. @5      // 按下鍵盤後
28. M=-1    // 變黑
29. @10     // 跳到第 10 行
30. 0;JMP
```
![](https://github.com/yucing/co110a/blob/master/picture/fill1.png)
![](https://github.com/yucing/co110a/blob/master/picture/fill2.png)

## 跳躍指令
```
D;JGT   if D > 0 jump
D;JGE   if D >= 0 jump
D;JLT   if D < 0 jump
D;JLE   if D <= 0 jump
D;JEQ   if D = 0 jump
D;JNE   if D != 0 jump
0;JMP   jump
```