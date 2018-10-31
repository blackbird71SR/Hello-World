
  1 entity hello_world is
  2 end;
  3 
  4 architecture hello_world of hello_world is
  5 begin
  6   stimulus : process
  7   begin
  8     assert false report "Hello World"
  9     severity note;
 10     wait;
 11   end process stimulus;
 12 end hello_world;
