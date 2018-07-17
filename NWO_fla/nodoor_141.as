package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public dynamic class nodoor_141 extends MovieClip
   {
       
      
      public var r43_fp4:MovieClip;
      
      public var b0:MovieClip;
      
      public var b1:MovieClip;
      
      public var b2:MovieClip;
      
      public var b3:MovieClip;
      
      public var b4:MovieClip;
      
      public var r43_bnote:MovieClip;
      
      public var b10:MovieClip;
      
      public var b5:MovieClip;
      
      public var b11:MovieClip;
      
      public var b6:MovieClip;
      
      public var b7:MovieClip;
      
      public var hand:MovieClip;
      
      public var r43_lostpage:MovieClip;
      
      public var b8:MovieClip;
      
      public var b9:MovieClip;
      
      public var i;
      
      public var current_rot;
      
      public var win;
      
      public var s;
      
      public function nodoor_141()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function quay_len(e:Event) : *
      {
         if(this.hand.rotation != this.current_rot)
         {
            if(this.hand.rotation > this.current_rot)
            {
               this.hand.rotation = this.hand.rotation - 10;
               if(this.hand.rotation < this.current_rot)
               {
                  this.hand.rotation = this.current_rot;
               }
            }
            else
            {
               this.hand.rotation = this.hand.rotation + 10;
               if(this.hand.rotation > this.current_rot)
               {
                  this.hand.rotation = this.current_rot;
               }
            }
         }
         else if(this.win)
         {
            this.set_win();
         }
      }
      
      public function set_win() : *
      {
         this.removeEventListener(Event.ENTER_FRAME,this.quay_len);
         this.gotoAndStop(2);
         MovieClip(root).done_task(126);
      }
      
      public function get_r43_fp4(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r43_fp4_got = true;
         MovieClip(root)["shared_4fp"].visible = true;
         MovieClip(root).send_notification("A piece of paper.");
      }
      
      public function get_r43_lostpage(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r43_lostpage_got = true;
         MovieClip(root)["shared_lostpage"].visible = true;
         MovieClip(root).send_notification("A piece of paper.");
      }
      
      public function get_bnote(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r43_bnote_got = true;
         MovieClip(root)["shared_bnote"].visible = true;
         MovieClip(root).send_notification("Another note.");
      }
      
      function frame1() : *
      {
         stop();
         this.current_rot = 0;
         this.win = false;
         this.s = "XXXXXXXXXX";
         for(this.i = 0; this.i < 12; this.i++)
         {
            this["b" + this.i].quayindex = this.i;
            if(this.i * 30 <= 180)
            {
               this["b" + this.i].rot = this.i * 30;
            }
            else
            {
               this["b" + this.i].rot = (this.i - 6) * 30 - 180;
            }
            this["b" + this.i].addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
            {
               current_rot = e.target.rot;
               s = s + ("q" + e.target.quayindex);
               s = s.slice(("q" + e.target.quayindex).length);
               if(s == "q7q2q9q3q8")
               {
                  win = true;
               }
            });
         }
         this.addEventListener(Event.ENTER_FRAME,this.quay_len);
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r43_lostpage_got)
         {
            this.r43_lostpage.visible = false;
         }
         if(MovieClip(root).r43_bnote_got)
         {
            this.r43_bnote.visible = false;
         }
         if(MovieClip(root).r43_fp4_got)
         {
            this.r43_fp4.visible = false;
         }
         this.r43_lostpage.addEventListener(MouseEvent.CLICK,this.get_r43_lostpage);
         this.r43_bnote.addEventListener(MouseEvent.CLICK,this.get_bnote);
         this.r43_fp4.addEventListener(MouseEvent.CLICK,this.get_r43_fp4);
      }
   }
}
