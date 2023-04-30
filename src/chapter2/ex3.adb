with Ada.Integer_Text_IO;
with Ada.Text_IO;

procedure ex3 is
   procedure Swap(A : in out Integer; B: in out Integer) is
      Temp : Integer;
   begin
      Temp := A;
      A := B;
      B := Temp;
   end Swap;
   X: Integer;
   Y: Integer;
begin
   X := 3;
   Y := 9;
   Swap(X, Y);
   
   Ada.Integer_Text_IO.Put(X);
   Ada.Text_IO.New_Line;
   Ada.Integer_Text_IO.Put(Y);
end ex3;
