package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class Symbol11_7 extends MovieClip
   {
       
      
      public var n0:MovieClip;
      
      public var n1:MovieClip;
      
      public var n2:MovieClip;
      
      public var n3:MovieClip;
      
      public var n4:MovieClip;
      
      public var n5:MovieClip;
      
      public var i;
      
      public var obj;
      
      public var empty;
      
      public var types;
      
      public var poss;
      
      public var target_poss;
      
      public function Symbol11_7()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function check_win() : *
      {
         for(this.i = 0; this.i < 6; this.i++)
         {
            if(this["n" + this.i].pos != this.target_poss[this.i])
            {
               return;
            }
         }
         this.gotoAndStop(2);
         MovieClip(root).done_task(2);
      }
      
      public function reset_game() : *
      {
         for(this.i = 0; this.i < 6; this.i++)
         {
            this["n" + this.i].pos = this.poss[this.i];
            this["n" + this.i].x = this.poss[this.i] * 35;
            this.empty = 3;
         }
      }
      
      function frame1() : *
      {
         stop();
         this.empty = 3;
         this.types = [1,1,1,2,2,2];
         this.poss = [0,1,2,4,5,6];
         this.target_poss = [4,5,6,0,1,2];
         for(this.i = 0; this.i < 6; this.i++)
         {
            this["n" + this.i].gotoAndStop(this.types[this.i]);
            this["n" + this.i].type = this.types[this.i];
            this["n" + this.i].pos = this.poss[this.i];
            this["n" + this.i].addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
            {
               obj = e.target;
               if(obj.type == 1)
               {
                  if(empty == obj.pos + 1)
                  {
                     empty = obj.pos;
                     obj.pos = empty + 1;
                     obj.x = obj.pos * 35;
                  }
                  else if(empty == obj.pos + 2)
                  {
                     empty = obj.pos;
                     obj.pos = empty + 2;
                     obj.x = obj.pos * 35;
                  }
               }
               else if(empty == obj.pos - 1)
               {
                  empty = obj.pos;
                  obj.pos = empty - 1;
                  obj.x = obj.pos * 35;
               }
               else if(empty == obj.pos - 2)
               {
                  empty = obj.pos;
                  obj.pos = empty - 2;
                  obj.x = obj.pos * 35;
               }
               check_win();
            });
         }
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}
