package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r14locker1_55 extends MovieClip
   {
       
      
      public var yellow_locked_mc:MovieClip;
      
      public var yellow_unlocked_mc:MovieClip;
      
      public function r14locker1_55()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      function frame1() : *
      {
         stop();
         this.yellow_locked_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(MovieClip(root).using == "shared_r12_key1")
            {
               e.target.parent.gotoAndStop(2);
               MovieClip(root).send_notification("Oh. There something inside it.");
            }
            else
            {
               MovieClip(root).send_notification("It\'s locked. Try to use a key?");
            }
         });
      }
      
      function frame2() : *
      {
         stop();
         this.yellow_unlocked_mc.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).gotoAndStop("room-1-4-1");
         });
      }
   }
}
