package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r11box1_4 extends MovieClip
   {
       
      
      public var r11_1fp:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var r11key1_mc:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public function r11box1_4()
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
         if(this.s == "9641")
         {
            MovieClip(root).r11_box_unlocked = true;
            MovieClip(root).done_task(104);
            this.gotoAndStop(2);
         }
      }
      
      public function get_key(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r11_key1_got = true;
         MovieClip(root)["shared_r11_key1"].visible = true;
         MovieClip(root).send_notification("You got a red key!");
      }
      
      public function get_1fp(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r11_1fp_got = true;
         MovieClip(root)["shared_1fp"].visible = true;
         MovieClip(root).send_notification("You got a small paper!");
      }
      
      function frame1() : *
      {
         if(!MovieClip(root).r11_box_unlocked)
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
         if(MovieClip(root).r11_key1_got)
         {
            this.r11key1_mc.visible = false;
         }
         if(MovieClip(root).r11_1fp_got)
         {
            this.r11_1fp.visible = false;
         }
         this.r11key1_mc.addEventListener(MouseEvent.CLICK,this.get_key);
         this.r11_1fp.addEventListener(MouseEvent.CLICK,this.get_1fp);
      }
   }
}
