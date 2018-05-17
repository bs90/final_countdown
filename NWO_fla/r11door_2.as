package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class r11door_2 extends MovieClip
   {
       
      
      public var n7:MovieClip;
      
      public var n8:MovieClip;
      
      public var n9:MovieClip;
      
      public var n10:MovieClip;
      
      public var n11:MovieClip;
      
      public var n12:MovieClip;
      
      public var n13:MovieClip;
      
      public var n14:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var n5:MovieClip;
      
      public var n6:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public var first_state;
      
      public function r11door_2()
      {
         super();
         addFrameScript(0,this.frame1);
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
         for(this.i = 1; this.i < 15; this.i++)
         {
            this.s = this.s + String.fromCharCode(this["n" + this.i].number);
         }
         if(this.s == "ALBERTEINSTEIN")
         {
            if(!(MovieClip(root).r13_door_unlocked && MovieClip(root).r23_door_unlocked && MovieClip(root).r33_door_unlocked && MovieClip(root).r43_bnote_got))
            {
               MovieClip(root).cheat_task(28);
               return;
            }
            MovieClip(root).done_task(28);
         }
      }
      
      function frame1() : *
      {
         stop();
         this.first_state = "WHATISYOURNAME";
         for(this.i = 1; this.i < 15; this.i++)
         {
            this["n" + this.i].number = this.first_state.charAt(this.i - 1).charCodeAt(0);
            this["n" + this.i].num_txt.text = this.first_state.charAt(this.i - 1);
            this["n" + this.i].addEventListener(MouseEvent.CLICK,this.handleClick);
         }
      }
   }
}
