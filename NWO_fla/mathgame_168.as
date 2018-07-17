package NWO_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public dynamic class mathgame_168 extends MovieClip
   {
       
      
      public var p16:MovieClip;
      
      public var p17:MovieClip;
      
      public var reset:SimpleButton;
      
      public var p18:MovieClip;
      
      public var p19:MovieClip;
      
      public var p0:MovieClip;
      
      public var p1:MovieClip;
      
      public var p2:MovieClip;
      
      public var p3:MovieClip;
      
      public var current_number_txt:TextField;
      
      public var p4:MovieClip;
      
      public var p5:MovieClip;
      
      public var p6:MovieClip;
      
      public var p10:MovieClip;
      
      public var p7:MovieClip;
      
      public var p11:MovieClip;
      
      public var p8:MovieClip;
      
      public var p12:MovieClip;
      
      public var p9:MovieClip;
      
      public var p13:MovieClip;
      
      public var p14:MovieClip;
      
      public var p15:MovieClip;
      
      public var obj;
      
      public var i;
      
      public var last_i;
      
      public var current_number;
      
      public var ptypes;
      
      public var pvalues;
      
      public var clicked;
      
      public function mathgame_168()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function set_click(i:*) : *
      {
         return function(e:MouseEvent):*
         {
            if(last_i == 19)
            {
               return;
            }
            if(last_i == -1)
            {
               if(i == 0 && !clicked[0])
               {
                  change_p(i);
               }
            }
            else if(i == last_i + 1 || i == last_i - 1 || i == last_i + 5 || i == last_i - 5)
            {
               change_p(i);
            }
         };
      }
      
      public function change_p(i:*) : *
      {
         this.clicked[i] = true;
         this.last_i = i;
         this.obj = this["p" + i];
         this.obj.gotoAndStop(2);
         switch(this.obj.ptype)
         {
            case "+":
               this.current_number = this.current_number + int(this.obj.pvalue);
               break;
            case "-":
               this.current_number = this.current_number - int(this.obj.pvalue);
               break;
            case "x":
               this.current_number = this.current_number * int(this.obj.pvalue);
         }
         this["current_number_txt"].text = this.current_number;
         if(i == 19 && this.current_number == 146)
         {
            this.gotoAndStop(2);
            MovieClip(root).done_task(121);
         }
      }
      
      public function reset_game(e:MouseEvent) : *
      {
         this.last_i = -1;
         this.current_number = 13;
         this["current_number_txt"].text = this.current_number;
         for(this.i = 0; this.i < 20; this.i++)
         {
            this.clicked[this.i] = false;
            this.obj = this["p" + this.i];
            this.obj.gotoAndStop(1);
         }
      }
      
      function frame1() : *
      {
         stop();
         this.last_i = -1;
         this.current_number = 13;
         this.ptypes = ["-","+","+","-","-","x","-","+","-","+","-","x","-","-","-","-","+","x","+","-"];
         this.pvalues = [3,2,1,4,5,4,5,2,3,1,1,4,5,2,3,3,4,5,1,2];
         this.clicked = new Array(20);
         for(this.i = 0; this.i < 20; this.i++)
         {
            this.clicked[this.i] = false;
            this.obj = this["p" + this.i];
            this.obj.ptype = this.ptypes[this.i];
            this.obj.pvalue = this.pvalues[this.i];
            this.obj.value_txt.text = "" + this.ptypes[this.i] + this.pvalues[this.i];
            this.obj.addEventListener(MouseEvent.CLICK,this.set_click(this.i));
         }
         this.reset.addEventListener(MouseEvent.CLICK,this.reset_game);
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}
