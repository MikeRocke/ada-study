procedure ex10 is
   type Int_Array is array (Character range <>) of Integer;
   function Max(Items : in Int_Array) return Integer is
      Max : Integer;
   begin
      Max := 0;
      for I of Items loop
         if I > Max then
            Max := I;
         end if;
      end loop;
      return Max;
   end Max;
   Example : Int_Array('A' .. 'Z');
   Result: Integer;
begin
   Example := ('A'..'Z' => 0);
   
   Example('X') := 123;
   Example('A') := 122222;
   Result := Max(Example);
   
end ex10;
