# 第八週習題
## CPU 圖
![](https://github.com/yucing/co110a/blob/master/picture/CPU1.png)
```md
inM : 從資料記憶體來的資料
instrucion : 從指令記憶體來的資料
reset : 1 -> 從開機
outM : 將資料寫入記憶體
writeM : 1 -> 寫入記憶體
addressM : 寫進哪個記憶體
PC : 下一個要執行的指令位置
```
## instruction
![](https://github.com/yucing/co110a/blob/master/picture/CPU3.png)
```md
instrution[15] == 0 -> A instruction
               == 1 -> C instruction

instruction[0..2] -> jump
instruction[3..5] -> M.D.A
instruction[6..11] -> no.f.ny.zy.nx.zx
```

## CPU
![](https://github.com/yucing/co110a/blob/master/picture/CPU4.png)
```hdl
CHIP CPU {

    IN  inM[16],         // M value input  (M = contents of RAM[A])
        instruction[16], // Instruction for execution
        reset;           // Signals whether to re-start the current
                         // program (reset==1) or continue executing
                         // the current program (reset==0).

    OUT outM[16],        // M value output
        writeM,          // Write to M? 
        addressM[15],    // Address in data memory (of M)
        pc[15];          // address of next instruction

    PARTS:
    // Put your code here:
    Not(in=instruction[15], out=ARun);   // 是否為 A 指令

    Mux16(a=instruction, b=ALUOut, sel=instruction[15], out=MInst);    // 讀取 A 或 傳入 上一個 ALUout

    Or(a=ARun, b=instruction[5], out=Are);  // ARegister 是否執行
    ARegister(in=MInst, load=Are, out=AreOut, out[0..14]=addressM);

    Mux16(a=AreOut, b=inM, sel=instruction[12], out=MinM);

    And(a=instruction[15], b=instruction[4], out=DRun); // DRegister 是否執行
    DRegister(in=ALUOut, load=DRun, out=DreOut);

    ALU(x=DreOut, y=MinM, zx=instruction[11], nx=instruction[10], zy=instruction[9], ny=instruction[8], f=instruction[7], no=instruction[6], out=ALUOut, out=outM, zr=zr, ng=ng);

    And(a=instruction[3], b=instruction[15], out=writeM);   // 是否讀取 M

    And(a=zr, b=instruction[1], out=jeq);   // JGQ
    And(a=ng, b=instruction[2], out=jlt);   // JLT

    Or(a=zr, b=ng, out=J1);
    Not(in=J1, out=J2);
    And(a=J2, b=instruction[0], out=jgt); // JGT

    Or(a=jeq, b=jlt, out=CJ1);
    Or(a=jgt, b=CJ1, out=CJ2);
    And(a=instruction[15], b=CJ2, out=CJ3); // 為 C 指令時運作

    PC(in=AreOut, reset=reset, inc=true,load=CJ3,out[0..14]=pc);
}
```