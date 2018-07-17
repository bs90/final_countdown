package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public dynamic class Symbol17_83 extends MovieClip
   {
       
      
      public var ma_mc:MovieClip;
      
      public var status:TextField;
      
      public var b1:MovieClip;
      
      public var b2:MovieClip;
      
      public var r1:MovieClip;
      
      public var b3:MovieClip;
      
      public var r2:MovieClip;
      
      public var b4:MovieClip;
      
      public var r10:MovieClip;
      
      public var r3:MovieClip;
      
      public var b5:MovieClip;
      
      public var r11:MovieClip;
      
      public var r4:MovieClip;
      
      public var b6:MovieClip;
      
      public var r12:MovieClip;
      
      public var r5:MovieClip;
      
      public var b7:MovieClip;
      
      public var r13:MovieClip;
      
      public var r6:MovieClip;
      
      public var b8:MovieClip;
      
      public var r14:MovieClip;
      
      public var r7:MovieClip;
      
      public var r8:MovieClip;
      
      public var r9:MovieClip;
      
      public var i;
      
      public var current_pos;
      
      public var stses;
      
      public function Symbol17_83()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function gogo(e:MouseEvent) : *
      {
         if(e.currentTarget.done)
         {
            return;
         }
         if(Math.pow(e.currentTarget.xx - this.current_pos[0],2) + Math.pow(e.currentTarget.yy - this.current_pos[1],2) == 5)
         {
            this.current_pos = [e.currentTarget.xx,e.currentTarget.yy];
            e.currentTarget.done = true;
            e.currentTarget.gotoAndStop(2);
            this.ma_mc.x = e.currentTarget.x;
            this.ma_mc.y = e.currentTarget.y;
            this.check_win();
         }
      }
      
      public function reset_game() : *
      {
         this.current_pos = [2,3];
         for(this.i = 1; this.i <= 14; this.i++)
         {
            this["r" + this.i].done = false;
            this["r" + this.i].gotoAndStop(1);
            if(this.i == 14)
            {
               this["r" + this.i].done = true;
               this["r" + this.i].gotoAndStop(2);
               this.ma_mc.x = this["r" + this.i].x;
               this.ma_mc.y = this["r" + this.i].y;
            }
         }
      }
      
      public function check_win() : *
      {
         for(this.i = 1; this.i <= 14; this.i++)
         {
            if(!this["r" + this.i].done)
            {
               return;
            }
         }
         this.gotoAndStop(2);
         MovieClip(root).done_task(114);
      }
      
      function frame1() : *
      {
         stop();
         this.current_pos = [2,3];
         this.ma_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            reset_game();
         });
         for(this.i = 1; this.i <= 14; this.i++)
         {
            if(this.i <= 12)
            {
               this["r" + this.i].xx = (this.i - 1) % 4;
               this["r" + this.i].yy = (this.i - 1 - (this.i - 1) % 4) / 4;
            }
            else
            {
               this["r" + this.i].xx = (this.i - 1) % 4 + 1;
               this["r" + this.i].yy = 3;
            }
            this["r" + this.i].done = false;
            if(this.i == 14)
            {
               this["r" + this.i].done = true;
               this["r" + this.i].gotoAndStop(2);
            }
            this["r" + this.i].addEventListener(MouseEvent.CLICK,this.gogo);
         }
      }
      
      function frame2() : *
      {
         stop();
         this.stses = ["4","3","1","X","2","X","5","X"];
         for(this.i = 1; this.i <= 8; this.i++)
         {
            this["b" + this.i].sts = this.stses[this.i - 1];
            this["b" + this.i].addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
            {
               e.target.parent["status"].text = e.target.sts;
            });
         }
      }
   }
}
