package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class franaldo_hide_1_67 extends MovieClip
   {
       
      
      public var r22_clf_sun:MovieClip;
      
      public function franaldo_hide_1_67()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function get_clf_sun(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r22_sun_got = true;
         MovieClip(root)["shared_clf_sun"].visible = true;
         MovieClip(root).send_notification("You got a strange paper!");
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r22_sun_got)
         {
            this.r22_clf_sun.visible = false;
         }
         this.r22_clf_sun.addEventListener(MouseEvent.CLICK,this.get_clf_sun);
      }
   }
}
