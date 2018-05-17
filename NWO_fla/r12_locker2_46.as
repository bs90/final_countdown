package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r12_locker2_46 extends MovieClip
   {
       
      
      public var r12_clf_bomb:MovieClip;
      
      public var r12anote_mc:MovieClip;
      
      public var red_locked:MovieClip;
      
      public function r12_locker2_46()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function get_note(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r12_a_note_got = true;
         MovieClip(root)["shared_r12_a_note"].visible = true;
         MovieClip(root).send_notification("You got a note!");
      }
      
      public function get_clf_bomb(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r12_bomb_got = true;
         MovieClip(root)["shared_clf_bomb"].visible = true;
         MovieClip(root).send_notification("You got a bomb paper?!");
      }
      
      function frame1() : *
      {
         stop();
         this.red_locked.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(MovieClip(root).using == "shared_r11_key1")
            {
               e.target.parent.gotoAndStop(2);
               MovieClip(root).send_notification("Good job!");
            }
            else
            {
               MovieClip(root).send_notification("No way! It\'s locked.");
            }
         });
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r12_a_note_got)
         {
            this.r12anote_mc.visible = false;
         }
         if(MovieClip(root).r12_bomb_got)
         {
            this.r12_clf_bomb.visible = false;
         }
         this.r12_clf_bomb.addEventListener(MouseEvent.CLICK,this.get_clf_bomb);
         this.r12anote_mc.addEventListener(MouseEvent.CLICK,this.get_note);
      }
   }
}
