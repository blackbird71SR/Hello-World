<?php
class Problem
{
    public function bissexto(int $ano)
    {
        if ($ano%4 == 0){
            if ($ano % 100 == 0) {
                if ($ano % 400 == 0){
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }
}





