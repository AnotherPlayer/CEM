<?php
namespace App\Helper;

class Helper {
    public static function uploadFile($key, $path){
        request()->file($key)->store($path);
        return request()->file($key)->hashName();
    }
}
