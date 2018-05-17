package NWO_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public dynamic class franaldo_64 extends MovieClip
   {
       
      
      public var franaldo_hide1:MovieClip;
      
      public var frafruit_mc:MovieClip;
      
      public var make_fruit_btn:SimpleButton;
      
      public var fracup1:MovieClip;
      
      public var fralong_mc:MovieClip;
      
      public var fracup2:MovieClip;
      
      public var fracup3:MovieClip;
      
      public var fracolor_mc:MovieClip;
      
      public var franaldo_hide2:MovieClip;
      
      public var i;
      
      public var target;
      
      public var color;
      
      public var fruit;
      
      public var colors;
      
      public var fruits;
      
      public function franaldo_64()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         this.target = 1;
         this.color = 1;
         this.fruit = 1;
         this.colors = ["blue","red","orange","green","yellow"];
         this.fruits = ["mango","apple","banana","strawberry","watermelon"];
         for(this.i = 1; this.i <= 3; this.i++)
         {
            this["fracup" + this.i].current_state = "";
            this["fracup" + this.i].addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
            {
               if(e.target.current_state != "")
               {
                  MovieClip(root).send_notification("Droped " + e.target.current_state);
                  e.target.current_state = "";
                  e.target.gotoAndStop(1);
               }
            });
         }
         this.fralong_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            target = target % 3 + 1;
            e.target.play();
         });
         this.frafruit_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            fruit = fruit % 5 + 1;
            e.target.play();
         });
         this.fracolor_mc.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            color = color % 5 + 1;
            e.target.play();
         });
         this.make_fruit_btn.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(e.target.parent["fracup" + target].current_state == "")
            {
               e.target.parent["fracup" + target].gotoAndStop(colors[color - 1]);
               e.target.parent["fracup" + target].current_state = colors[color - 1] + " " + fruits[fruit - 1];
               MovieClip(root).send_notification(e.target.parent["fracup" + target].current_state);
               if(e.target.parent["fracup1"].current_state == "red strawberry" && e.target.parent["fracup2"].current_state == "blue watermelon" && e.target.parent["fracup3"].current_state == "orange apple")
               {
                  franaldo_hide1.gotoAndStop(2);
                  MovieClip(root).done_task(8);
               }
               if(e.target.parent["fracup1"].current_state == "red mango" && e.target.parent["fracup2"].current_state == "blue banana" && e.target.parent["fracup3"].current_state == "green watermelon")
               {
                  franaldo_hide2.gotoAndStop(2);
                  MovieClip(root).done_task(18);
               }
            }
            else
            {
               MovieClip(root).send_notification("Already has " + e.target.parent["fracup" + target].current_state);
            }
         });
      }
   }
}
