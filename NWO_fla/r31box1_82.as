package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r31box1_82 extends MovieClip
   {
       
      
      public var r31_3fp:MovieClip;
      
      public var r31_clock_hour:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public function r31box1_82()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function handleClick(e:MouseEvent) : void
      {
         e.currentTarget.number = (e.currentTarget.number + 1) % 10;
         e.currentTarget.num_txt.text = e.currentTarget.number;
         this.check_win();
      }
      
      public function check_win() : *
      {
         this.s = "";
         for(this.i = 1; this.i < 5; this.i++)
         {
            this.s = this.s + this["n" + this.i].number;
         }
         if(this.s == "7356")
         {
            if(!MovieClip(root).r32_gift_got)
            {
               MovieClip(root).cheat_task(15);
               return;
            }
            MovieClip(root).r31_box_unlocked = true;
            MovieClip(root).done_task(15);
            this.gotoAndStop(2);
         }
      }
      
      public function get_clock_hour(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r31_clock_hour_got = true;
         MovieClip(root)["shared_clock_hour"].visible = true;
         MovieClip(root).send_notification("You got a short metal thing!");
      }
      
      public function get_3fp(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r31_3fp_got = true;
         MovieClip(root)["shared_3fp"].visible = true;
         MovieClip(root).send_notification("You got another small paper!");
      }
      
      function frame1() : *
      {
         if(!MovieClip(root).r31_box_unlocked)
         {
            stop();
         }
         for(this.i = 1; this.i < 5; this.i++)
         {
            this["n" + this.i].number = 0;
            this["n" + this.i].addEventListener(MouseEvent.CLICK,this.handleClick);
         }
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r31_3fp_got)
         {
            this.r31_3fp.visible = false;
         }
         if(MovieClip(root).r31_clock_hour_got)
         {
            this.r31_clock_hour.visible = false;
         }
         this.r31_3fp.addEventListener(MouseEvent.CLICK,this.get_3fp);
         this.r31_clock_hour.addEventListener(MouseEvent.CLICK,this.get_clock_hour);
      }
   }
}
