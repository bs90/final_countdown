package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r23_door_72 extends MovieClip
   {
       
      
      public var n7:MovieClip;
      
      public var n8:MovieClip;
      
      public var n9:MovieClip;
      
      public var n10:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var n5:MovieClip;
      
      public var unlocked_door:MovieClip;
      
      public var n6:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public var first_state;
      
      public function r23_door_72()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function handleClick(e:MouseEvent) : void
      {
         e.currentTarget.number = (e.currentTarget.number + 1 - 65) % 26 + 65;
         e.currentTarget.num_txt.text = String.fromCharCode(e.currentTarget.number);
         this.check_win();
      }
      
      public function check_win() : *
      {
         this.s = "";
         for(this.i = 1; this.i < 11; this.i++)
         {
            this.s = this.s + String.fromCharCode(this["n" + this.i].number);
         }
         if(this.s == "OPENSESAME" && true)
         {
            if(!(MovieClip(root).r12_bomb_got && MovieClip(root).r22_sun_got && MovieClip(root).r21_map_got && MovieClip(root).r24_bee_got))
            {
               MovieClip(root).cheat_task(111);
               return;
            }
            this.gotoAndStop(2);
            MovieClip(root).done_task(111);
            MovieClip(root).r23_door_unlocked = true;
         }
      }
      
      function frame1() : *
      {
         if(!MovieClip(root).r23_door_unlocked)
         {
            stop();
         }
         this.first_state = "WHATISTHIS";
         for(this.i = 1; this.i < 11; this.i++)
         {
            this["n" + this.i].number = this.first_state.charAt(this.i - 1).charCodeAt(0);
            this["n" + this.i].num_txt.text = this.first_state.charAt(this.i - 1);
            this["n" + this.i].addEventListener(MouseEvent.CLICK,this.handleClick);
         }
      }
      
      function frame2() : *
      {
         stop();
         this.unlocked_door.addEventListener(MouseEvent.CLICK,function():*
         {
            MovieClip(root).send_notification("You\'re now in a YELLOW room.");
            MovieClip(root).gotoAndStop("room-3-3");
         });
      }
   }
}
