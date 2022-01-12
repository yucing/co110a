module xor3(input a, b, c, output abc);
wire ab;
xor g1(ab, a, b);
xor g2(abc, c, ab);
endmodule

module xor3test;
reg a, b, c;
wire abc;

xor3 h(a,b, c, abc);

initial // 程式開始時執行
begin
  a = 0;
  b = 0;
  c = 0;
  $monitor("%4dns monitor: a=%d b=%d c=%d a^b^c=%d", $stime, a, b, c, abc); // 監控 a b c 的改變
end

always #50 begin // 每 50ns 執行一次
  a = a+1;
end

always #100 begin // 每 100ns 執行一次
  b = b+1;
end

always #200 begin // 每 200ns 執行一次
  c = c+1;
end

initial #2000 $finish; // 2000ns 時 結束

endmodule