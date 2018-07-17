package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public dynamic class seven_48 extends MovieClip
   {
       
      
      public var t1:TextField;
      
      public var t2:TextField;
      
      public var t3:TextField;
      
      public var t4:TextField;
      
      public var t5:TextField;
      
      public var t6:TextField;
      
      public var zero:MovieClip;
      
      public var tentimes:MovieClip;
      
      public var plusseven:MovieClip;
      
      public var i;
      
      public var number;
      
      public function seven_48()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function set_text() : *
      {
         this.number = this.number % 1000000;
         if(this.number == 864192)
         {
            MovieClip(root).done_task(102);
            this.gotoAndStop(2);
         }
         else
         {
            for(this.i = 1; this.i <= 6; this.i++)
            {
               this["t" + this.i].text = (this.number % Math.pow(10,this.i) - this.number % Math.pow(10,this.i - 1)) / Math.pow(10,this.i - 1);
            }
         }
      }
      
      function frame1() : *
      {
         stop();
         this.number = 0;
         this.set_text();
         this.zero.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            number = 0;
            set_text();
         });
         this.plusseven.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            number = number + 7;
            set_text();
         });
         this.tentimes.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            number = number * 10;
            set_text();
         });
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}
