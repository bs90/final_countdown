package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class t12table_45 extends MovieClip
   {
       
      
      public var r12key1_mc:MovieClip;
      
      public var r12_mirror_paper:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public function t12table_45()
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
         for(this.i = 1; this.i < 4; this.i++)
         {
            this.s = this.s + this["n" + this.i].number;
         }
         if(this.s == "253")
         {
            MovieClip(root).done_task(4);
            this.gotoAndStop(2);
         }
      }
      
      public function get_key(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r12_key1_got = true;
         MovieClip(root)["shared_r12_key1"].visible = true;
         MovieClip(root).send_notification("You got a yellow key!");
      }
      
      public function get_r12_mirror_paper(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r12_mirror_paper_got = true;
         MovieClip(root)["shared_mirror_paper"].visible = true;
         MovieClip(root).send_notification("You got a black paper!");
      }
      
      function frame1() : *
      {
         stop();
         for(this.i = 1; this.i < 4; this.i++)
         {
            this["n" + this.i].number = 0;
            this["n" + this.i].addEventListener(MouseEvent.CLICK,this.handleClick);
         }
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r12_key1_got)
         {
            this.r12key1_mc.visible = false;
         }
         if(MovieClip(root).r12_mirror_paper_got)
         {
            this.r12_mirror_paper.visible = false;
         }
         this.r12key1_mc.addEventListener(MouseEvent.CLICK,this.get_key);
         this.r12_mirror_paper.addEventListener(MouseEvent.CLICK,this.get_r12_mirror_paper);
      }
   }
}
