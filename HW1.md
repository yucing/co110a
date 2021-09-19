# 第一章習題
## Not
```hdl
/**
 * Not gate:
 * out = not in
 */

CHIP Not {
    IN in;
    OUT out;

    PARTS:
    // Put your code here:
    Nand(a=in, b=in, out=out);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Not.png)

## And
```hdl
/**
 * And gate: 
 * out = 1 if (a == 1 and b == 1)
 *       0 otherwise
 */

CHIP And {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Nand(a=a, b=b, out=ab);
    Not(in=ab, out=out);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/And.png)

## Or
```hdl
 /**
 * Or gate:
 * out = 1 if (a == 1 or b == 1)
 *       0 otherwise
 */

CHIP Or {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=a, out=na);
    Not(in=b, out=nb);
    Nand(a=na, b=nb, out=out);
}

```

![](https://github.com/yucing/co110a/blob/master/picture/Or.png)

## Xor
```hdl
/**
 * Exclusive-or gate:
 * out = not (a == b)
 */

CHIP Xor {
    IN a, b;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=a, out=aa);
    Not(in=b, out=bb);
    And(a=b, b=aa, out=na);
    And(a=a, b=bb, out=nb);
    Or(a=na, b=nb, out=out);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Xor.png)

## Mux
```hdl
/** 
 * Multiplexor:
 * out = a if sel == 0
 *       b otherwise
 */

CHIP Mux {
    IN a, b, sel;
    OUT out;

    PARTS:
    // Put your code here:
    Not(in=sel, out=s);
    And(a=a, b=s, out=as);
    And(a=b, b=sel, out=bs);
    Or(a=as, b=bs, out=out);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Mux.png)

## Dmux
```hdl
/**
 * Demultiplexor:
 * {a, b} = {in, 0} if sel == 0
 *          {0, in} if sel == 1
 */

CHIP DMux {
    IN in, sel;
    OUT a, b;

    PARTS:
    // Put your code here:
    Not(in=sel, out=s);
    And(a=in, b=s, out=a);
    And(a=in, b=sel, out=b);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/Dmux.png)

[圖片繪製軟體](https://www.block.tw/bce/)