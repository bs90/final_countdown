package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class four_163 extends MovieClip
   {
       
      
      public var p34:MovieClip;
      
      public var p42:MovieClip;
      
      public var p43:MovieClip;
      
      public var p44:MovieClip;
      
      public var p00:MovieClip;
      
      public var p10:MovieClip;
      
      public var p01:MovieClip;
      
      public var p20:MovieClip;
      
      public var p11:MovieClip;
      
      public var p30:MovieClip;
      
      public var p21:MovieClip;
      
      public var p12:MovieClip;
      
      public var p31:MovieClip;
      
      public var p22:MovieClip;
      
      public var p13:MovieClip;
      
      public var p32:MovieClip;
      
      public var p23:MovieClip;
      
      public var p14:MovieClip;
      
      public var p33:MovieClip;
      
      public var p24:MovieClip;
      
      public var state_arr:Array;
      
      public var i;
      
      public var j;
      
      public var count;
      
      public var started;
      
      public function four_163()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function handleClick(a:*, b:*) : *
      {
         return function(e:MouseEvent):void
         {
            i = a;
            j = b;
            if(state_arr[i][j] == 1 || state_arr[i][j] == 0 && started)
            {
               return;
            }
            if(state_arr[i][j] == 0)
            {
               state_arr[i][j] = 1;
               e.target.gotoAndStop(6);
               started = true;
               place_arrows(i,j);
               return;
            }
            if(state_arr[i][j] == 2)
            {
               while(j < 5 && state_arr[i][j] != 1)
               {
                  e.target.parent["p" + i + j].gotoAndStop(6);
                  state_arr[i][j] = 1;
                  j++;
               }
               place_arrows(i,j - 1);
               return;
            }
            if(state_arr[i][j] == 4)
            {
               while(j >= 0 && state_arr[i][j] != 1)
               {
                  e.target.parent["p" + i + j].gotoAndStop(6);
                  state_arr[i][j] = 1;
                  j--;
               }
               place_arrows(i,j + 1);
               return;
            }
            if(state_arr[i][j] == 3)
            {
               while(i < 5 && state_arr[i][j] != 1)
               {
                  e.target.parent["p" + i + j].gotoAndStop(6);
                  state_arr[i][j] = 1;
                  i++;
               }
               place_arrows(i - 1,j);
               return;
            }
            if(state_arr[i][j] == 5)
            {
               while(i >= 0 && state_arr[i][j] != 1)
               {
                  e.target.parent["p" + i + j].gotoAndStop(6);
                  state_arr[i][j] = 1;
                  i--;
               }
               place_arrows(i + 1,j);
               return;
            }
         };
      }
      
      public function place_arrows(a:*, b:*) : *
      {
         for(this.i = 0; this.i < 5; this.i++)
         {
            for(this.j = 0; this.j < 5; this.j++)
            {
               if(this.state_arr[this.i][this.j] > 1)
               {
                  this.state_arr[this.i][this.j] = 0;
                  this["p" + this.i + this.j].gotoAndStop(1);
               }
            }
         }
         this.count = 0;
         if(b < 4 && this.state_arr[a][b + 1] != 1)
         {
            this.count++;
            this["p" + a + (b + 1)].gotoAndStop(2);
            this.state_arr[a][b + 1] = 2;
         }
         if(b > 0 && this.state_arr[a][b - 1] != 1)
         {
            this.count++;
            this["p" + a + (b - 1)].gotoAndStop(4);
            this.state_arr[a][b - 1] = 4;
         }
         if(a < 4 && this.state_arr[a + 1][b] != 1)
         {
            this.count++;
            this["p" + (a + 1) + b].gotoAndStop(3);
            this.state_arr[a + 1][b] = 3;
         }
         if(a > 0 && this.state_arr[a - 1][b] != 1)
         {
            this.count++;
            this["p" + (a - 1) + b].gotoAndStop(5);
            this.state_arr[a - 1][b] = 5;
         }
         if(this.count == 0)
         {
            for(this.i = 0; this.i < 5; this.i++)
            {
               for(this.j = 0; this.j < 5; this.j++)
               {
                  if(this.state_arr[this.i][this.j] == 0)
                  {
                     this.reset_game();
                     return;
                  }
               }
            }
            MovieClip(root).done_task(105);
            this.visible = false;
         }
      }
      
      public function reset_game() : void
      {
         this.started = false;
         for(this.i = 0; this.i < 5; this.i++)
         {
            for(this.j = 0; this.j < 5; this.j++)
            {
               this.state_arr[this.i][this.j] = 0;
            }
         }
         this.state_arr[0][2] = this.state_arr[0][3] = this.state_arr[0][4] = this.state_arr[4][0] = this.state_arr[4][1] = 1;
         for(this.i = 0; this.i < 5; this.i++)
         {
            for(this.j = 0; this.j < 5; this.j++)
            {
               if(this.state_arr[this.i][this.j] == 0)
               {
                  this["p" + this.i + this.j].gotoAndStop(1);
               }
            }
         }
      }
      
      function frame1() : *
      {
         this.state_arr = new Array(5);
         this.started = false;
         for(this.i = 0; this.i < 5; this.i++)
         {
            this.state_arr[this.i] = new Array(5);
            for(this.j = 0; this.j < 5; this.j++)
            {
               this.state_arr[this.i][this.j] = 0;
            }
         }
         this.state_arr[0][2] = this.state_arr[0][3] = this.state_arr[0][4] = this.state_arr[4][0] = this.state_arr[4][1] = 1;
         for(this.i = 0; this.i < 5; this.i++)
         {
            for(this.j = 0; this.j < 5; this.j++)
            {
               if(this.state_arr[this.i][this.j] == 0)
               {
                  this["p" + this.i + this.j].addEventListener(MouseEvent.CLICK,this.handleClick(this.i,this.j));
               }
            }
         }
      }
   }
}
