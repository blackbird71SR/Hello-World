entity HelloWorld is
end entity;
 
architecture hello_world of HelloWorld is
begin
 
    process is
    begin
 
        report "Hello World!";
        wait;
 
    end process;
 
end architecture;