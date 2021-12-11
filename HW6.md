# 第六週習題
## 圖片繪製軟體
[圖片繪製軟體](https://www.block.tw/bce/)
## RAM64
```hdl
CHIP RAM64 {
    IN in[16], load, address[6];
    OUT out[16];

    PARTS:
    // Put your code here:
    DMux8Way(in=load, sel=address[0..2], a=load1, b=load2, c=load3, d=load4, e=load5, f=load6, g=load7 ,h=load8);
    RAM8(in=in, load=load1, address=address[3..5], out=out1);
    RAM8(in=in, load=load2, address=address[3..5], out=out2);
    RAM8(in=in, load=load3, address=address[3..5], out=out3);
    RAM8(in=in, load=load4, address=address[3..5], out=out4);
    RAM8(in=in, load=load5, address=address[3..5], out=out5);
    RAM8(in=in, load=load6, address=address[3..5], out=out6);
    RAM8(in=in, load=load7, address=address[3..5], out=out7);
    RAM8(in=in, load=load8, address=address[3..5], out=out8);
    Mux8Way16(a=out1, b=out2, c=out3, d=out4, e=out5, f=out6, g=out7, h=out8, sel=address[0..2], out=out);
}
```
![](https://github.com/yucing/co110a/blob/master/picture/RAM64.png)

## RAM512
```hdl
CHIP RAM512 {
    IN in[16], load, address[9];
    OUT out[16];

    PARTS:
    // Put your code here:
    DMux8Way(in=load, sel=address[0..2], a=load1, b=load2, c=load3, d=load4, e=load5, f=load6, g=load7 ,h=load8);
    RAM64(in=in, load=load1, address=address[3..8], out=out1);
    RAM64(in=in, load=load2, address=address[3..8], out=out2);
    RAM64(in=in, load=load3, address=address[3..8], out=out3);
    RAM64(in=in, load=load4, address=address[3..8], out=out4);
    RAM64(in=in, load=load5, address=address[3..8], out=out5);
    RAM64(in=in, load=load6, address=address[3..8], out=out6);
    RAM64(in=in, load=load7, address=address[3..8], out=out7);
    RAM64(in=in, load=load8, address=address[3..8], out=out8);
    Mux8Way16(a=out1, b=out2, c=out3, d=out4, e=out5, f=out6, g=out7, h=out8, sel=address[0..2], out=out);
}
```
![](https://github.com/yucing/co110a/blob/master/picture/RAM512.png)

## RAM4K
```hdl
CHIP RAM4K {
    IN in[16], load, address[12];
    OUT out[16];

    PARTS:
    // Put your code here:
    DMux8Way(in=load, sel=address[0..2], a=load1, b=load2, c=load3, d=load4, e=load5, f=load6, g=load7 ,h=load8);
    RAM512(in=in, load=load1, address=address[3..11], out=out1);
    RAM512(in=in, load=load2, address=address[3..11], out=out2);
    RAM512(in=in, load=load3, address=address[3..11], out=out3);
    RAM512(in=in, load=load4, address=address[3..11], out=out4);
    RAM512(in=in, load=load5, address=address[3..11], out=out5);
    RAM512(in=in, load=load6, address=address[3..11], out=out6);
    RAM512(in=in, load=load7, address=address[3..11], out=out7);
    RAM512(in=in, load=load8, address=address[3..11], out=out8);
    Mux8Way16(a=out1, b=out2, c=out3, d=out4, e=out5, f=out6, g=out7, h=out8, sel=address[0..2], out=out);
}
```
![](https://github.com/yucing/co110a/blob/master/picture/RAM4K.png)

## RAM16K
```hdl
CHIP RAM16K {
    IN in[16], load, address[14];
    OUT out[16];

    PARTS:
    // Put your code here:
    DMux4Way(in=load, sel=address[0..1], a=load1, b=load2, c=load3, d=load4);
    RAM4K(in=in, load=load1, address=address[2..13], out=out1);
    RAM4K(in=in, load=load2, address=address[2..13], out=out2);
    RAM4K(in=in, load=load3, address=address[2..13], out=out3);
    RAM4K(in=in, load=load4, address=address[2..13], out=out4);
    Mux4Way16(a=out1, b=out2, c=out3, d=out4, sel=address[0..1], out=out);
}
```
![](https://github.com/yucing/co110a/blob/master/picture/RAM16K.png)

## PC
```hdl
CHIP PC {
    IN in[16],load,inc,reset;
    OUT out[16];

    PARTS:
    // Put your code here:
    Inc16(in=loop, out=out1);
    Mux16(a=loop, b=out1, sel=inc, out=incout);
    Mux16(a=incout, b=in, sel=load, out=loadout);
    Mux16(a=loadout, b=false, sel=reset, out=reout);
    Register(in=reout, load=true, out=loop, out=out);
}
```
![](https://github.com/yucing/co110a/blob/master/picture/PC.png)