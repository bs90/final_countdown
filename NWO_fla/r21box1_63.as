package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r21box1_63 extends MovieClip
   {
       
      
      public var r12_clf_map:MovieClip;
      
      public var r21_2fp:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public function r21box1_63()
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
         if(this.s == "9265")
         {
            MovieClip(root).r21_box_unlocked = true;
            MovieClip(root).done_task(11);
            this.gotoAndStop(2);
         }
      }
      
      public function get_clf_map(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r21_map_got = true;
         MovieClip(root)["shared_clf_map"].visible = true;
         MovieClip(root).send_notification("You got a strange paper!");
      }
      
      public function get_2fp(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r21_2fp_got = true;
         MovieClip(root)["shared_2fp"].visible = true;
         MovieClip(root).send_notification("You got another small paper!");
      }
      
      function frame1() : *
      {
         if(!MovieClip(root).r21_box_unlocked)
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
         if(MovieClip(root).r21_2fp_got)
         {
            this.r21_2fp.visible = false;
         }
         if(MovieClip(root).r21_map_got)
         {
            this.r12_clf_map.visible = false;
         }
         this.r21_2fp.addEventListener(MouseEvent.CLICK,this.get_2fp);
         this.r12_clf_map.addEventListener(MouseEvent.CLICK,this.get_clf_map);
      }
   }
}
