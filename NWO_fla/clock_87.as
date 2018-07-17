package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class clock_87 extends MovieClip
   {
       
      
      public var clock_hidden:MovieClip;
      
      public var minute_mc:MovieClip;
      
      public var hour_mc:MovieClip;
      
      public var hour;
      
      public var minute;
      
      public function clock_87()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function set_clock_win() : *
      {
         MovieClip(root).done_task(117);
         this.clock_hidden.visible = true;
      }
      
      function frame1() : *
      {
         stop();
         if(MovieClip(root).r32_clock_hour_in)
         {
            gotoAndStop(2);
         }
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r32_clock_minute_in)
         {
            gotoAndStop(3);
         }
      }
      
      function frame3() : *
      {
         stop();
         this.clock_hidden.visible = false;
         this.hour = 6;
         this.minute = 30;
         this.minute_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            e.target.rotation = e.target.rotation + 30;
            minute = (minute + 5) % 60;
            if(hour == 8 && minute == 25)
            {
               set_clock_win();
            }
         });
         this.hour_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            e.target.rotation = e.target.rotation + 30;
            hour = (hour + 1) % 12;
            if(hour == 8 && minute == 25)
            {
               set_clock_win();
            }
         });
      }
   }
}
