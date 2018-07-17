package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r33_90 extends MovieClip
   {
       
      
      public var b17:MovieClip;
      
      public var b18:MovieClip;
      
      public var b19:MovieClip;
      
      public var gotolastroom:MovieClip;
      
      public var b0:MovieClip;
      
      public var b1:MovieClip;
      
      public var b2:MovieClip;
      
      public var b3:MovieClip;
      
      public var b4:MovieClip;
      
      public var b10:MovieClip;
      
      public var b5:MovieClip;
      
      public var b11:MovieClip;
      
      public var b6:MovieClip;
      
      public var b12:MovieClip;
      
      public var b7:MovieClip;
      
      public var b13:MovieClip;
      
      public var b8:MovieClip;
      
      public var b14:MovieClip;
      
      public var b9:MovieClip;
      
      public var b15:MovieClip;
      
      public var b16:MovieClip;
      
      public var i;
      
      public var s;
      
      public var state;
      
      public function r33_90()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function check_win() : *
      {
         this.s = "";
         for(this.i = 0; this.i < 20; this.i++)
         {
            this.s = this.s + ("" + this.state[this.i]);
         }
         if(this.s == "10001000100000100010")
         {
            if(MovieClip(root).r34_microsd_got)
            {
               this.gotoAndStop(3);
               MovieClip(root).r33_door_unlocked = true;
               MovieClip(root).done_task(122);
            } else {
               MovieClip(root).cheat_task(122);
            }
         }
      }
      
      function frame1() : *
      {
         stop();
         if(MovieClip(root).r33_door_unlocked)
         {
            this.gotoAndStop(3);
         }
      }
      
      function frame2() : *
      {
         stop();
         this.state = new Array(20);
         for(this.i = 0; this.i < 20; this.i++)
         {
            this.state[this.i] = 0;
            this["b" + this.i].bindex = this.i;
            this["b" + this.i].addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
            {
               state[e.currentTarget.bindex] = (state[e.currentTarget.bindex] + 1) % 2;
               e.currentTarget.play();
               check_win();
            });
         }
      }
      
      function frame3() : *
      {
         stop();
         this.gotolastroom.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).gotoAndStop("room-4-3");
         });
      }
   }
}
