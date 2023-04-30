with Ada.Text_IO; use Ada.Text_IO;

procedure Palindrome is
   function Is_Palindrome(Item : in String) return Boolean is
   begin
      if Item'Length <= 1 then
         return True;
      elsif Item(Item'First) /= Item(Item'Last) then
         return False;
      else
         return Is_Palindrome(Item(Item'First + 1 .. Item'Last-1));
      end if;
   end Is_Palindrome;
   Max_Length : constant Positive := 100;
   subtype Line_Type is String (1 .. Max_Length);
   
   Line : Line_Type;
   Count : Natural;
        
begin
   Put_Line("Enter a Line. I'll tell you if it is a palindrome");
   Get_Line(Item => Line, Last => Count);
   if Is_Palindrome(Line(1..Count)) then
      Put_Line("Is a palindrome");
   else
      Put_Line("Is not a palindrome");
   end if;
   
   
end Palindrome;
