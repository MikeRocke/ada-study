pragma Ada_2012;
package body Stack is

   -----------
   -- Clear --
   -----------

   procedure Clear(Stack : in out Stack_Type) is
   begin
      Stack.Front := 1;
      Stack.Count := 0;
   end Clear;


   ----------
   -- Push --
   ----------

   procedure Push (Stack : in out Stack_Type; Item : in Element_Type) is
   begin
      if Full(Stack) then
         raise Overflow;
      else
         Stack.Items (Stack.Front) := Item;
         Stack.Front := Stack.Front + 1;
         Stack.Count := Stack.Count + 1;
      end if;
   end Push;

   ---------
   -- Pop --
   ---------

   procedure Pop (Stack : in out Stack_Type; Item : out Element_Type) is
   begin
      if Empty(Stack) then
         raise Underflow;
      else
         Stack.Front := Stack.Front - 1;
         Item := Stack.Items(Stack.Front);
         Stack.Count := Stack.Count - 1;
      end if;

   end Pop;

   ----------
   -- Full --
   ----------

   function Full (Stack : in Stack_Type) return Boolean is
   begin
      return Stack.Max_Size = Stack.Count;
   end Full;

   -----------
   -- Empty --
   -----------

   function Empty (Stack : in Stack_Type) return Boolean is
   begin
      return Stack.Count = 0;
   end Empty;

end Stack;
