// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
//設第一個值
@10     // 第一個數為 10
D=A     // 暫存 D = 10
@0      // 第一個數
M=D     // 設值為 10

//設第二個值
@2      // 第二個數
D=A     // 暫存 D = 2
@1      // 第二個數
M=D     // 設值為 2


// 迴圈 計算 10*2
// 計算迴圈跑幾次
@12
M=D

// 取得第一個值
@0
D=M

// 總和
@2
M=D+M

// 計算迴圈已跑幾次
@12
M=M-1
M;JNE   // 跳回第12行

@17     //停止
0;JMP
