with Stack;
with Ada.Integer_Text_IO;
with Ada.Text_IO;

procedure ex15 is
   package Int_Stack is new Stack(Element_Type => Integer);
   use Int_Stack;
   
   My_Stack : Int_Stack.Stack_Type(Max_Size => 10);
   I : Integer;
begin
   for Count in 1 ..10 loop
      Push(Stack =>  My_Stack, Item => Count);
   end loop;
   
   loop
      Pop(My_Stack, I);
      Ada.Integer_Text_IO.Put(Item => I);
      Ada.Text_IO.New_Line;
      exit when Empty(My_Stack);
   end loop;
   
   
   
end ex15;
