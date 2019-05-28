<?php
/*
 * 登录控制器
 */
class LoginController{
    /*
     * 插入方法
     */
   
    //查询数据库
   
    
    
    
    
		 public function change(){
			$data = $_POST;
			$head = $data['head'];
			$tel = $data['tel'];
			$name = $data['name'];
			$talk = $data['talk']; 
			$result=M()->update("data",Array('head'=>"$head",'name'=>"$name",'talk'=>"$talk"),"tel",$tel);
			echo "1";
		}
		
		
		public function registers(){
            $data = $_POST;
            $tel = $data["tel"];
            $old_data = M()->query_sql("SELECT * FROM data WHERE tel='{$tel}'");
            $old_data = current($old_data);
            $result = M()->add("data", $data);
                if ($result) {
                    echo ajax_return("200", "插入成功", $old_data);
                    exit;
                } else {
                    echo ajax_return("404", "插入失败", "");
                    exit;
                }
        }
    
    	
     public function querya(){
        $data = $_POST;
        $tel = $data["tel"];
        $old_data= M()->query_sql("SELECT * FROM data WHERE tel='{$tel}'");
        $old_data= current($old_data);
        if (!empty($old_data)) {
            echo ajax_return("505", "手机已存在", $old_data);
            exit;
        }
    }
    
		
    /*
     * 加密方法
     */
    public function verify($str){
        $str=md5(md5($str)."bokan");
        return $str;
    }
}