generic 
   type Element_Type is private;
package Stack is
   Overflow : exception;
   Underflow : exception;
   type Stack_Type(Max_Size : Positive) is limited private;
   
   procedure Clear(Stack : in out Stack_Type);
   procedure Push(Stack : in out Stack_Type; Item : in Element_Type);
   -- Overflow raised on attempt to push onto a full Stack
   procedure Pop(Stack : in out Stack_Type; Item : out Element_Type);
   function Full(Stack : in Stack_Type) return Boolean;
   function Empty(Stack : in Stack_Type) return Boolean;
   
private
   type Stack_Array is array (Positive range <>) of Element_Type;
   type Stack_Type (Max_Size : Positive) is
      record
         Count : Natural := 0;
         Front : Positive := 1;
         --Rear : Positive := Max_Size;
         Items : Stack_Array(1 .. Max_Size);
      end record;
   

end Stack;
