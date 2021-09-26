# 第二週習題
## Not16
```hdl
CHIP Not16 {
    IN in[16];
    OUT out[16];

    PARTS:
    // Put your code here:
    Not(in=in[0], out=out[0]);
    Not(in=in[1], out=out[1]);
    Not(in=in[2], out=out[2]);
    Not(in=in[3], out=out[3]);
    Not(in=in[4], out=out[4]);
    Not(in=in[5], out=out[5]);
    Not(in=in[6], out=out[6]);
    Not(in=in[7], out=out[7]);
    Not(in=in[8], out=out[8]);
    Not(in=in[9], out=out[9]);
    Not(in=in[10], out=out[10]);
    Not(in=in[11], out=out[11]);
    Not(in=in[12], out=out[12]);
    Not(in=in[13], out=out[13]);
    Not(in=in[14], out=out[14]);
    Not(in=in[15], out=out[15]);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Not16.png)


## And16
```hdl
CHIP And16 {
    IN a[16], b[16];
    OUT out[16];

    PARTS:
    // Put your code here:
    And(a=a[0] ,b=b[0] ,out=out[0]);
    And(a=a[1] ,b=b[1] ,out=out[1]);
    And(a=a[2] ,b=b[2] ,out=out[2]);
    And(a=a[3] ,b=b[3] ,out=out[3]);
    And(a=a[4] ,b=b[4] ,out=out[4]);
    And(a=a[5] ,b=b[5] ,out=out[5]);
    And(a=a[6] ,b=b[6] ,out=out[6]);
    And(a=a[7] ,b=b[7] ,out=out[7]);
    And(a=a[8] ,b=b[8] ,out=out[8]);
    And(a=a[9] ,b=b[9] ,out=out[9]);
    And(a=a[10] ,b=b[10] ,out=out[10]);
    And(a=a[11] ,b=b[11] ,out=out[11]);
    And(a=a[12] ,b=b[12] ,out=out[12]);
    And(a=a[13] ,b=b[13] ,out=out[13]);
    And(a=a[14] ,b=b[14] ,out=out[14]);
    And(a=a[15] ,b=b[15] ,out=out[15]);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/And16.png)

## Or16
```hdl
CHIP Or16 {
    IN a[16], b[16];
    OUT out[16];

    PARTS:
    // Put your code here:
    Or(a=a[0] ,b=b[0] ,out=out[0]);
    Or(a=a[1] ,b=b[1] ,out=out[1]);
    Or(a=a[2] ,b=b[2] ,out=out[2]);
    Or(a=a[3] ,b=b[3] ,out=out[3]);
    Or(a=a[4] ,b=b[4] ,out=out[4]);
    Or(a=a[5] ,b=b[5] ,out=out[5]);
    Or(a=a[6] ,b=b[6] ,out=out[6]);
    Or(a=a[7] ,b=b[7] ,out=out[7]);
    Or(a=a[8] ,b=b[8] ,out=out[8]);
    Or(a=a[9] ,b=b[9] ,out=out[9]);
    Or(a=a[10] ,b=b[10] ,out=out[10]);
    Or(a=a[11] ,b=b[11] ,out=out[11]);
    Or(a=a[12] ,b=b[12] ,out=out[12]);
    Or(a=a[13] ,b=b[13] ,out=out[13]);
    Or(a=a[14] ,b=b[14] ,out=out[14]);
    Or(a=a[15]] ,b=b[15] ,out=out[15]);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Or16.png)

## Mux16
```hdl
CHIP Mux16 {
    IN a[16], b[16], sel;
    OUT out[16];

    PARTS:
    // Put your code here:
    Mux(a=a[0], b=b[0], sel=sel, out=out[0]);
    Mux(a=a[1], b=b[1], sel=sel, out=out[1]);
    Mux(a=a[2], b=b[2], sel=sel, out=out[2]);
    Mux(a=a[3], b=b[3], sel=sel, out=out[3]);
    Mux(a=a[4], b=b[4], sel=sel, out=out[4]);
    Mux(a=a[5], b=b[5], sel=sel, out=out[5]);
    Mux(a=a[6], b=b[6], sel=sel, out=out[6]);
    Mux(a=a[7], b=b[7], sel=sel, out=out[7]);
    Mux(a=a[8], b=b[8], sel=sel, out=out[8]);
    Mux(a=a[9], b=b[9], sel=sel, out=out[9]);
    Mux(a=a[10], b=b[10], sel=sel, out=out[10]);
    Mux(a=a[11], b=b[11], sel=sel, out=out[11]);
    Mux(a=a[12], b=b[12], sel=sel, out=out[12]);
    Mux(a=a[13], b=b[13], sel=sel, out=out[13]);
    Mux(a=a[14], b=b[14], sel=sel, out=out[14]);
    Mux(a=a[15], b=b[15], sel=sel, out=out[15]);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Mux16.png)

## Or8Way
```hdl
CHIP Or8Way {
    IN in[8];
    OUT out;

    PARTS:
    // Put your code here:
    Or(a=in[0], b=in[1], out=t1);
    Or(a=in[2], b=in[3], out=t2);
    Or(a=in[4], b=in[5], out=t3);
    Or(a=in[6], b=in[7], out=t4);
    Or(a=t1, b=t2, out=t5);
    Or(a=t3, b=t4, out=t6);
    Or(a=t5, b=t6, out=out);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Or8way.png)

## Mux4Way16
```hdl
CHIP Mux4Way16 {
    IN a[16], b[16], c[16], d[16], sel[2];
    OUT out[16];

    PARTS:
    // Put your code here:
    Mux16(a=a, b=b, sel=sel[0], out=t1);
    Mux16(a=c, b=d, sel=sel[0], out=t2);
    Mux16(a=t1, b=t2, sel=sel[1], out=out);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Mux4Way16.png)

## Mux8Way16
```hdl
CHIP Mux8Way16 {
    IN a[16], b[16], c[16], d[16],
       e[16], f[16], g[16], h[16],
       sel[3];
    OUT out[16];

    PARTS:
    // Put your code here:
    Mux4Way16(a=a, b=b, c=c, d=d, sel[0]=sel[0], sel[1]=sel[1], out=t1);
    Mux4Way16(a=e, b=f, c=g, d=h, sel[0]=sel[0], sel[1]=sel[1], out=t2);
    Mux16(a=t1, b=t2, sel=sel[2], out=out);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Mux8Way16.png)

## DMux4Way
```hdl
CHIP DMux4Way {
    IN in, sel[2];
    OUT a, b, c, d;

    PARTS:
    // Put your code here:
    DMux(in=in, sel=sel[0], a=a, b=b);
    DMux(in=in, sel=sel[1], a=c, b=d);
}
```
![](https://github.com/yucing/co110a/blob/master/picture/Dmux4Way.png)

## DMux8Way
```hdl
CHIP DMux8Way {
    IN in, sel[3];
    OUT a, b, c, d, e, f, g, h;

    PARTS:
    // Put your code here:
    DMux(in=in, sel=sel[2], a=t1, b=t2);
    DMux(in=t1, sel=sel[0], a=a, b=b);
    DMux(in=t2, sel=sel[0], a=e, b=f);
    DMux(in=t1, sel=sel[1], a=c, b=d);
    DMux(in=t2, sel=sel[1], a=g, b=h);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Dmux8Way.png)
