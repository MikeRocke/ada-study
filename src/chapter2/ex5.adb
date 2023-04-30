with Ada.Text_IO;

procedure ex5 is
   type Day_Type is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
begin
   for Day in Day_Type loop
      Ada.Text_IO.Put_Line(Item => Day'Image);
    end loop;
end ex5;
