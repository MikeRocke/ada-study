with Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO;

procedure Palindrome is
   function Is_Palindrome(Item : in Unbounded_String) return Boolean is
   begin
      Ada.Text_IO.Unbounded_IO.Put_Line(Item);
      if Length(Item) <= 1 then
         return True;
      elsif Head(Source => Item, Count => 1) /= Tail(Source => Item, Count => 1) then
         return False;
      else
         return Is_Palindrome(Unbounded_Slice(Source => Item, Low => 2, High => Length(Item) -1));
      end if;
   end Is_Palindrome;
   Max_Length : constant Positive := 100;
   -- subtype Line_Type is String (1 .. Max_Length);
   -- todo change to unbounded
   subtype Line_Type is Unbounded_String;
   
   Line : Line_Type;
        
begin
   Ada.Text_IO.Put_Line("Enter a Line. I'll tell you if it is a palindrome");
   Ada.Text_IO.Unbounded_IO.Get_Line(Item => Line);
   if Is_Palindrome(Line) then
      Ada.Text_IO.Put_Line("Is a palindrome");
   else
      Ada.Text_IO.Put_Line("Is not a palindrome");
   end if;
   
   
end Palindrome;
