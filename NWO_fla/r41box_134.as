package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r41box_134 extends MovieClip
   {
       
      
      public var r41_dancing:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public function r41box_134()
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
         if(this.s == "5682")
         {
            MovieClip(root).r41_box_unlocked = true;
            MovieClip(root).done_task(24);
            this.gotoAndStop(2);
         }
      }
      
      public function get_dancing(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r41_dancing_got = true;
         MovieClip(root)["shared_dancing"].visible = true;
         MovieClip(root).send_notification("Dancing figures!!!");
      }
      
      function frame1() : *
      {
         if(!MovieClip(root).r41_box_unlocked)
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
         if(MovieClip(root).r41_dancing_got)
         {
            this.r41_dancing.visible = false;
         }
         this.r41_dancing.addEventListener(MouseEvent.CLICK,this.get_dancing);
      }
   }
}
