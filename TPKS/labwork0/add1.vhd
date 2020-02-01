entity add1 is 
 port (b1,b2 : in BIT; 
 c1,s1 : out BIT); 
end add1;
architecture struct_1 of add1 is
begin
 s1<= ((b1 and (not b2)) or ((not b1) and b2));
 c1<= b1 and b2; 
end struct_1;