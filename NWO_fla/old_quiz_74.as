package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class old_quiz_74 extends MovieClip
   {
       
      
      public var tovit:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public function old_quiz_74()
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
         if(this.s == "7319")
         {
            this.gotoAndStop(2);
            MovieClip(root).done_task(107);
         }
      }
      
      public function get_tovit(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r23_tovit_got = true;
         MovieClip(root)["shared_tovit"].visible = true;
         MovieClip(root).send_notification("You got a screwdriver!");
      }
      
      function frame1() : *
      {
         stop();
         for(this.i = 1; this.i < 5; this.i++)
         {
            this["n" + this.i].number = 0;
            this["n" + this.i].addEventListener(MouseEvent.CLICK,this.handleClick);
         }
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r23_tovit_got)
         {
            this.tovit.visible = false;
         }
         this.tovit.addEventListener(MouseEvent.CLICK,this.get_tovit);
      }
   }
}
