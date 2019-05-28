<?php
/*
 * 登录控制器
 */
class LoginController{
    /*
     * 插入方法
     */
    public function register(){
        //if(IS_AJAX) {
            $data = $_POST;
            $message = $data["message"];
            // $title = $data["title"];
            $image = $data["image"];
            $date = time();
            $old_data = M()->query_sql("SELECT * FROM message WHERE message='{$message}'");
            //p($old_data);
            $old_data = current($old_data);//old_data返回的是多维数组，用current方法取数组指针为1的值
            //p($old_data);
                $data["date"]=$date;
                $result = M()->add("message", $data);
                if ($result) {
                    echo ajax_return("200", "插入成功", "");
                    exit;
                } else {
                    echo ajax_return("404", "插入失败", "");
                    exit;
                }
        }
    //查询数据库
    public function query(){
        $data = $_POST;
        // $message = $data["message"];
        $old_data = M()->query_sql("SELECT a.name, a.head, b.message,b.date,b.image FROM data a INNER JOIN message b ON a.tel = b.title");
        $counta=count($old_data);
        echo ajax_return($counta,'',$old_data);
    }
    public function querys(){
        $data = $_POST;
        // $message = $data["message"];
        $old_data = M()->query_sql("SELECT * FROM data");
        $counta=count($old_data);
        echo ajax_return($counta,'',$old_data);
    }
    
    public function verify($str){
        $str=md5(md5($str)."bokan");
        return $str;
    }
}