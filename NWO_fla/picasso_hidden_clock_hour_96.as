package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class picasso_hidden_clock_hour_96 extends MovieClip
   {
       
      
      public var hidden_clock_minute:MovieClip;
      
      public function picasso_hidden_clock_hour_96()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function get_hidden_clock_minute(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r34_clock_minute_got = true;
         MovieClip(root)["shared_clock_minute"].visible = true;
         MovieClip(root).send_notification("You got a red long metal thing! A clock\'s hand?");
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r34_clock_minute_got)
         {
            this.hidden_clock_minute.visible = false;
         }
         this.hidden_clock_minute.addEventListener(MouseEvent.CLICK,this.get_hidden_clock_minute);
      }
   }
}
