with Ada.Text_IO;

procedure EX8 is
   type Day_Type is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   LoopItem: Day_Type;
begin
   LoopItem := Day_Type'First;
   loop 
      Ada.Text_IO.Put_Line(Item => LoopItem'Image);
      exit when LoopItem = Day_Type'Last;
      LoopItem := Day_Type'Succ(LoopItem);
   end loop;
   
   
end EX8;
