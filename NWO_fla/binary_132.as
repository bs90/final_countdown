package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class binary_132 extends MovieClip
   {
       
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var microsd:MovieClip;
      
      public var n4:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public function binary_132()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5);
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
         if(this.s == "2510")
         {
            this.gotoAndPlay(5);
            MovieClip(root).done_task(120);
         }
      }
      
      public function get_microsd(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r34_microsd_got = true;
         MovieClip(root)["shared_microsd"].visible = true;
         MovieClip(root).send_notification("You got a microsd card. Find a computer to use it.");
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
      }
      
      function frame3() : *
      {
         stop();
      }
      
      function frame4() : *
      {
         for(this.i = 1; this.i < 5; this.i++)
         {
            this["n" + this.i].number = 1;
            this["n" + this.i].num_txt.text = 1;
            this["n" + this.i].addEventListener(MouseEvent.CLICK,this.handleClick);
         }
         stop();
      }
      
      function frame5() : *
      {
         if(MovieClip(root).r34_microsd_got)
         {
            this.microsd.visible = false;
         }
         this.microsd.addEventListener(MouseEvent.CLICK,this.get_microsd);
         stop();
      }
   }
}
