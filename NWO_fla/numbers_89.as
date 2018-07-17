package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class numbers_89 extends MovieClip
   {
       
      
      public var r32_ruler:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var gift_mc:MovieClip;
      
      public var n5:MovieClip;
      
      public var i;
      
      public var s:String;
      
      public function numbers_89()
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
         for(this.i = 1; this.i < 6; this.i++)
         {
            this.s = this.s + this["n" + this.i].number;
         }
         // 2 3 5 7 11 13 | A1*2 + 1 = A4 | A1 + A2 + 1 = A2 | A1 + A2 + A4 % 10 = A3
         if(this.s == "28513")
         {
            gotoAndStop(2);
            MovieClip(root).done_task(113);
         }
      }
      
      function frame1() : *
      {
         stop();
         for(this.i = 1; this.i < 6; this.i++)
         {
            this["n" + this.i].number = 0;
            this["n" + this.i].addEventListener(MouseEvent.CLICK,this.handleClick);
         }
      }
      
      function frame2() : *
      {
         stop();
         if(MovieClip(root).r32_gift_got)
         {
            this.gift_mc.visible = false;
         }
         if(MovieClip(root).r32_ruler_got)
         {
            this.r32_ruler.visible = false;
         }
         this.gift_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            e.target.visible = false;
            MovieClip(root).r32_gift_got = true;
            MovieClip(root).shared_gift.visible = true;
            MovieClip(root).send_notification("You got a bottle of glass cleaner. Useful???");
         });
         this.r32_ruler.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            e.target.visible = false;
            MovieClip(root).r32_ruler_got = true;
            MovieClip(root).shared_ruler.visible = true;
            MovieClip(root).send_notification("You got a big ruler.");
         });
      }
   }
}
