# 第三週習題
## HalfAdder
```hdl
CHIP HalfAdder {
    IN a, b;    // 1-bit inputs
    OUT sum,    // Right bit of a + b 
        carry;  // Left bit of a + b

    PARTS:
    // Put you code here:
    Xor(a=a, b=b, out=sum);
    And(a=a, b=b, out=carry);
}

```

![](https://github.com/yucing/co110a/blob/master/picture/HalfAdder.png)

## FullAdder
```hdl
CHIP FullAdder {
    IN a, b, c;  // 1-bit inputs
    OUT sum,     // Right bit of a + b + c
        carry;   // Left bit of a + b + c

    PARTS:
    // Put you code here:
    Xor(a=a, b=b, out=t1);
    Xor(a=t1, b=c, out=sum);
    And(a=a, b=b, out=t2);
    And(a=a, b=c, out=t3);
    And(a=b, b=c, out=t4);
    Or(a=t2, b=t3, out=t5);
    Or(a=t4, b=t5, out=carry);
}
```

![](https://github.com/yucing/co110a/blob/master/picture/FullAdder.png)

## Adder16
```hdl
CHIP Add16 {
    IN a[16], b[16];
    OUT out[16];

    PARTS:
   // Put you code here:
   FullAdder(a=a[0], b=b[0], c=false, sum=out[0], carry=t1);
   FullAdder(a=a[1], b=b[1], c=t1, carry=t2, sum=out[1]);
   FullAdder(a=a[2], b=b[2], c=t2, carry=t3, sum=out[2]);
   FullAdder(a=a[3], b=b[3], c=t3, carry=t4, sum=out[3]);
   FullAdder(a=a[4], b=b[4], c=t4, carry=t5, sum=out[4]);
   FullAdder(a=a[5], b=b[5], c=t5, carry=t6, sum=out[5]);
   FullAdder(a=a[6], b=b[6], c=t6, carry=t7, sum=out[6]);
   FullAdder(a=a[7], b=b[7], c=t7, carry=t8, sum=out[7]);
   FullAdder(a=a[8], b=b[8], c=t8, carry=t9, sum=out[8]);
   FullAdder(a=a[9], b=b[9], c=t9, carry=t10, sum=out[9]);
   FullAdder(a=a[10], b=b[10], c=t10, carry=t11, sum=out[10]);
   FullAdder(a=a[11], b=b[11], c=t11, carry=t12, sum=out[11]);
   FullAdder(a=a[12], b=b[12], c=t12, carry=t13, sum=out[12]);
   FullAdder(a=a[13], b=b[13], c=t13, carry=t14, sum=out[13]);
   FullAdder(a=a[14], b=b[14], c=t14, carry=t15, sum=out[14]);
   FullAdder(a=a[15], b=b[15], c=t15, carry=t16, sum=out[15]);
```
## Inc16
```hdl
CHIP Inc16 {
    IN in[16];
    OUT out[16];

    PARTS:
   // Put you code here:
   //Add16(a=in, b[0]=true, out=out);
   HalfAdder(a=in[0], b=true, carry=t1, sum=out[0]);
   HalfAdder(a=in[1], b=t1, carry=t2, sum=out[1]);
   HalfAdder(a=in[2], b=t2, carry=t3, sum=out[2]);
   HalfAdder(a=in[3], b=t3, carry=t4, sum=out[3]);
   HalfAdder(a=in[4], b=t4, carry=t5, sum=out[4]);
   HalfAdder(a=in[5], b=t5, carry=t6, sum=out[5]);
   HalfAdder(a=in[6], b=t6, carry=t7, sum=out[6]);
   HalfAdder(a=in[7], b=t7, carry=t8, sum=out[7]);
   HalfAdder(a=in[8], b=t8, carry=t9, sum=out[8]]);
   HalfAdder(a=in[9], b=t9, carry=t10, sum=out[9]);
   HalfAdder(a=in[10], b=t10, carry=t11, sum=out[10]);
   HalfAdder(a=in[11], b=t11, carry=t12, sum=out[11]);
   HalfAdder(a=in[12], b=t12, carry=t13, sum=out[12]);
   HalfAdder(a=in[13], b=t13, carry=t14, sum=out[13]);
   HalfAdder(a=in[14], b=t14, carry=t15, sum=out[14]);
   HalfAdder(a=in[15], b=t15, carry=t16, sum=out[15]);
}
```