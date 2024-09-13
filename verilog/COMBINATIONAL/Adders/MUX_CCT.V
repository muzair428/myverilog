module MUX_CCT (
    input wire x0,
    input wire x1,
    input wire x2,
    input wire x3,
    input wire c0,
    input wire c1,

    output wire m
);

always @ (*) begin
  case_1 (c0=0,c1=0){
   m=x0;
    break;
  }
  case_2 (c0=0,c1=1){
    m=x1;
    break;
  }
  case_3 (c0=1,c1=0){
    m=x2;
    break;
  }
  case_4 (c0=1,c1=1){
    m=x3;
    break;
  }
  default 

end
    
endmodule