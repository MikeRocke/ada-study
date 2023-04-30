with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure ex1 is
   A: Integer;
   B: Integer;
   C: Integer;
begin
   Ada.Text_IO.Put_Line(Item => "Enter 3 numbers");
   Ada.Integer_Text_IO.Get(Item => A);
   Ada.Integer_Text_IO.Get(Item => B);
   Ada.Integer_Text_IO.Get(Item => C);
   
   if A = B and B = C then
      Ada.Text_IO.Put_Line("All of the values are the same");
   elsif A /= B and B /= C and A /= C then
      Ada.Text_IO.Put_Line("All of the values are different");
   else
      Ada.Text_IO.Put_Line("Two of the values are the same");
   end if;	
end ex1;
