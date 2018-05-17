package NWO_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public dynamic class bigitems_13 extends MovieClip
   {
       
      
      public var shared_diary_mc:MovieClip;
      
      public var tovit:MovieClip;
      
      public var hahaha:MovieClip;
      
      public var close_btn:SimpleButton;
      
      public function bigitems_13()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9,9,this.frame10);
      }
      
      function frame1() : *
      {
         this.close_btn.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            e.target.parent.visible = false;
         });
         stop();
      }
      
      function frame2() : *
      {
         stop();
         this.shared_diary_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(MovieClip(root).using == "shared_lostpage" && e.currentTarget.currentFrame == 9 && !MovieClip(root).lost_page_in)
            {
               e.currentTarget["hidden"].visible = true;
               MovieClip(root).lost_page_in = true;
               MovieClip(root)["shared_lostpage"].visible = false;
               MovieClip(root)["shared_items_bg_mc"].visible = false;
            }
            else
            {
               e.currentTarget.play();
            }
         });
      }
      
      function frame3() : *
      {
         stop();
      }
      
      function frame4() : *
      {
         stop();
      }
      
      function frame5() : *
      {
         stop();
      }
      
      function frame6() : *
      {
         stop();
      }
      
      function frame7() : *
      {
         stop();
      }
      
      function frame8() : *
      {
         stop();
         this.tovit.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            MovieClip(root).tovit_status = (MovieClip(root).tovit_status + 1) % 2;
            e.target.play();
            MovieClip(root)["shared_tovit"].play();
         });
      }
      
      function frame9() : *
      {
         stop();
      }
      
      function frame10() : *
      {
         stop();
         this.hahaha.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            e.target.play();
         });
      }
   }
}
