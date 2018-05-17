package NWO_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class notificaion_27 extends MovieClip
   {
       
      
      public var notification_txt:TextField;
      
      public function notificaion_27()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         this.visible = false;
      }
   }
}
