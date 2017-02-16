<?php
/**
 * Created by PhpStorm.
 * User: luffyzhao
 * Date: 2017/2/16
 * Time: 16:11
 */

namespace app\common\behavior;
use think\Response;

class Install
{
    public function run(&$params)
    {
        if(!file_exists(RUNTIME_PATH . '.lock')){
            $url = url('install/index/index','',true,true);
            Response::create($url, 'redirect')->code(302)->send();
            exit;
        }
    }
}