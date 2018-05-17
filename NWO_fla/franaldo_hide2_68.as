package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class franaldo_hide2_68 extends MovieClip
   {
       
      
      public var r22_green_key:MovieClip;
      
      public function franaldo_hide2_68()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function get_key(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r22_green_key_got = true;
         MovieClip(root)["shared_r2_franaldo_key"].visible = true;
         MovieClip(root).send_notification("You got a green key!");
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r22_green_key_got)
         {
            this.r22_green_key.visible = false;
         }
         this.r22_green_key.addEventListener(MouseEvent.CLICK,this.get_key);
      }
   }
}
