package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class thetrap_137 extends MovieClip
   {
       
      
      public var trap5_mc:MovieClip;
      
      public var rainbow:MovieClip;
      
      public var trap8_mc:MovieClip;
      
      public var trap9_mc:MovieClip;
      
      public var trap12_mc:MovieClip;
      
      public var trap13_mc:MovieClip;
      
      public var trap10_mc:MovieClip;
      
      public var trap2_mc:MovieClip;
      
      public var lazer:MovieClip;
      
      public var trap11_mc:MovieClip;
      
      public var trap3_mc:MovieClip;
      
      public var trap1_mc:MovieClip;
      
      public var trap6_mc:MovieClip;
      
      public var trap7_mc:MovieClip;
      
      public var trap4_mc:MovieClip;
      
      public var i;
      
      public var tmp;
      
      public var trap_array;
      
      public var relative_array;
      
      public function thetrap_137()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function trap_move(i:int) : Function
      {
         return function(e:MouseEvent):void
         {
            var j:* = undefined;
            if(trap_array[i - 1] == 1)
            {
               if(relative_array[i] == 0)
               {
                  change_state(i);
                  change_state(i * 2 % 13);
                  change_state(i * 4 % 13);
                  change_state(i * 8 % 13);
                  change_state(i * 16 % 13);
               }
               else
               {
                  for(j = 0; j < relative_array[i].length; j++)
                  {
                     change_state(relative_array[i][j]);
                  }
               }
            }
            change_lazer();
         };
      }
      
      public function change_state(i:int) : void
      {
         this["trap" + i + "_mc"].play();
         this.trap_array[i - 1] = (this.trap_array[i - 1] + 1) % 2;
      }
      
      public function change_lazer() : *
      {
         this.tmp = 0;
         for(this.i = 1; this.i <= 13; )
         {
            if(this.trap_array[this.i - 1] == 0)
            {
               this.tmp++;
               this.i++;
               continue;
            }
            break;
         }
         this.lazer.width = 107 + 30 * this.tmp;
         if(this.tmp == 13)
         {
            this.rainbow.visible = true;
            MovieClip(root).done_task(123);
         }
      }
      
      function frame1() : *
      {
         stop();
         this.rainbow.visible = false;
         this.tmp = 0;
         this.trap_array = new Array(13);
         this.relative_array = new Array(14);
         this.relative_array[1] = 0;
         this.relative_array[2] = [1,3,9,5];
         this.relative_array[3] = [3,7,4,6,8];
         this.relative_array[4] = 0;
         this.relative_array[5] = [5,11,7,9,10];
         this.relative_array[6] = 0;
         this.relative_array[7] = [7,1,2,5,12];
         this.relative_array[8] = 0;
         this.relative_array[9] = 0;
         this.relative_array[10] = 0;
         this.relative_array[11] = [11,7,1,2,9];
         this.relative_array[12] = 0;
         this.relative_array[13] = [13,11,7,2,3];
         for(this.i = 1; this.i <= 13; this.i++)
         {
            this.trap_array[this.i - 1] = 1;
            this["trap" + this.i + "_mc"].addEventListener(MouseEvent.CLICK,this.trap_move(this.i));
         }
         this.change_lazer();
      }
   }
}
