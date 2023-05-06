package Clock_Display is

   type Day_Type is (None, Sun, Mon, Tue, Wed, Thu, Midweek, Fri,
                     Weekdays, Sat, Weekend, Everyday);
   
   procedure Display_Days(Days : in Day_Type);
private 
   for Day_Type use (None => 2#00000000#,
                     Sun => 2#00000001#,
                     Mon => 2#00000010#,
                     Tue => 2#00000100#,
                     Wed => 2#00001000#,
                     Thu => 2#00010000#,
                     Midweek => 2#00011100#,
                     Fri => 2#00100000#,
                     Weekdays => 2#00111110#,
                     Sat => 2#01000000#,
                     Weekend => 2#01000001#,
                     Everyday => 2#01111111#);
   for Day_Type'Size use 8;
   

end Clock_Display;
