default
{
    state_entry()
    {
        llSay(0, "Hello World!");
    }
 
    touch_start(integer total_number)
    {
        llSay(0, "Touched.");
    }
}
