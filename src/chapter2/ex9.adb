with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure ex9 is
   type Pixel_Color is (Red, Green, Blue, Cyan, Magenta, Yellow, Black, White);
   My_Array: array (Pixel_Color) of Natural;
begin
   My_Array(Blue) := 1234;
   for C in Pixel_Color loop
      Ada.Integer_Text_IO.Put(Item => My_Array(C));
      Ada.Text_IO.New_Line;
   end loop;
   
end ex9;
