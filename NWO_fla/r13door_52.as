package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r13door_52 extends MovieClip
   {
       
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var unlocked_door:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public function r13door_52()
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
         if(this.s == "9782")
         {
            if(!MovieClip(root).r12_a_note_got)
            {
               MovieClip(root).cheat_task(7);
               return;
            }
            MovieClip(root).r13_door_unlocked = true;
            MovieClip(root).done_task(7);
            this.gotoAndStop(2);
         }
      }
      
      function frame1() : *
      {
         if(!MovieClip(root).r13_door_unlocked)
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
         this.unlocked_door.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).send_notification("You\'re now in a GREEN room.");
            MovieClip(root).gotoAndStop("room-2-3");
         });
      }
   }
}
