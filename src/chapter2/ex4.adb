with Ada.Float_Text_IO;
with Ada.Text_IO;

procedure ex4 is
   function Larger (A : in Float; B : in Float) return Float is 
   begin
      if A > B then
         return A;
      else
         return B;
      end if;	
   end Larger;
   X : Float;
begin
   X := Larger(5.2, 10.1);
   Ada.Float_Text_IO.Put(Item => X);
end ex4;
