with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure ex2 is
begin
   for Index in 0 .. 100 loop 
      if (Index mod 3) = 0 then
         
         Ada.Integer_Text_IO.Put(Item => Index);
         Ada.Text_IO.New_Line;
      end if;	
   end loop;
end ex2;
