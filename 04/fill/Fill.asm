// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
@24575  // 螢幕最大值
D=A
@8      // 設螢幕最大值
M=D


@5      //設定螢幕變黑/白 (-1/0)
M=0     //螢幕變白

@24576  // 鍵盤是否按下
D=M
@27
D;JNE   //  D 不為 0 時，跳轉到 27 行

@16383  // 螢幕最小值-1
D=A
@10     // 設定螢幕值
M=D
@5      // 設定變黑/變白
D=M
@10
M=M+1   // 螢幕值+1
A=M     // 第幾個螢幕
M=D     //變黑/變白

D=A     // 跑第幾個螢幕
@8      // 跑幾圈
D=M-D   // 24575-螢幕值
@13
D;JNE   // D 不為 0 時 跳到第 13 行

@4      // 卡迴圈
0;JMP

@5      // 按下鍵盤後
M=-1    // 變黑
@10     // 跳到第 10 行
0;JMP