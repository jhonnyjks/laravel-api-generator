<?php

namespace App\Constants;

class CODE_PER_OPERATION
{
    public static $Read = [1, 3, 5, 7, 9, 11, 13, 15];
    public static $Insert = [2, 3, 6, 7, 10, 11, 14, 15];
    public static $Update = [4, 5, 6, 7, 12, 13, 14, 15];
    public static $Delete = [8, 9, 10, 11, 12, 13, 14, 15];
}