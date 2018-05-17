package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public dynamic class r1_bomb_1 extends MovieClip
   {
       
      public var timeleft_txt:TextField;
      
      public function r1_bomb_1()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function countdown_bomb(e:Event) : void
      {
         if (MovieClip(root)!= null) {
            var timeleft:Number = MovieClip(parent).get_timeleft();
         }
         this.timeleft_txt.text = this.convertToHHMMSS(timeleft/1000);
      }
      
      public function convertToHHMMSS($seconds:Number) : String
      {
         var s:Number = $seconds % 60;
         var m:Number = Math.floor($seconds % 3600 / 60);
         var h:Number = Math.floor($seconds / (60 * 60));
         var hourStr:String = h == 0?"":this.doubleDigitFormat(h) + ":";
         var minuteStr:* = this.doubleDigitFormat(m) + ":";
         var secondsStr:String = this.doubleDigitFormat(s);
         return hourStr + minuteStr + secondsStr;
      }
      
      public function doubleDigitFormat($num:uint) : String
      {
         if($num < 10)
         {
            return "0" + $num;
         }
         return String($num);
      }
      
      function frame1() : *
      {
         this.addEventListener(Event.ENTER_FRAME,this.countdown_bomb);
      }
   }
}
