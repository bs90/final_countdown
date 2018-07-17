package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class puzz_95 extends MovieClip
   {
       
      
      public var p34:MovieClip;
      
      public var p25:MovieClip;
      
      public var hidden_clock_hour:MovieClip;
      
      public var p35:MovieClip;
      
      public var p40:MovieClip;
      
      public var p50:MovieClip;
      
      public var p41:MovieClip;
      
      public var p51:MovieClip;
      
      public var p42:MovieClip;
      
      public var p52:MovieClip;
      
      public var p43:MovieClip;
      
      public var p53:MovieClip;
      
      public var p44:MovieClip;
      
      public var p00:MovieClip;
      
      public var p54:MovieClip;
      
      public var p45:MovieClip;
      
      public var p10:MovieClip;
      
      public var p01:MovieClip;
      
      public var p55:MovieClip;
      
      public var p20:MovieClip;
      
      public var p11:MovieClip;
      
      public var p02:MovieClip;
      
      public var p30:MovieClip;
      
      public var p21:MovieClip;
      
      public var p12:MovieClip;
      
      public var p03:MovieClip;
      
      public var p31:MovieClip;
      
      public var p22:MovieClip;
      
      public var p13:MovieClip;
      
      public var p04:MovieClip;
      
      public var p32:MovieClip;
      
      public var p23:MovieClip;
      
      public var p14:MovieClip;
      
      public var p33:MovieClip;
      
      public var p24:MovieClip;
      
      public var p15:MovieClip;
      
      public var i;
      
      public var j;
      
      public var a;
      
      public var b;
      
      public var suf;
      
      public var base_size;
      
      public var empty_p;
      
      public var init_state;

      public var c_state;

      public var ii;
      
      public function puzz_95()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function clickHandle(e:MouseEvent) : void
      {
         this.a = e.target.y / this.base_size;
         this.b = e.target.x / this.base_size;
         if(this.a == this.empty_p[0] && (this.b == this.empty_p[1] + 1 || this.b == this.empty_p[1] - 1) || this.b == this.empty_p[1] && (this.a == this.empty_p[0] + 1 || this.a == this.empty_p[0] - 1))
         {
            e.target.x = this.empty_p[1] * this.base_size;
            e.target.y = this.empty_p[0] * this.base_size;
            this.empty_p = [this.a,this.b];
            this.check_win();
            // this.print_state();
         }
      }

      /* public function print_state()
      {
         this.ii = 0;
         this.c_state = [];
         for(this.i = 0; this.i < 6; this.i++)
         {
            for(this.j = 0; this.j < 6; this.j++)
            {
               if(!(this.i == 0 && this.j == 5))
               {
                  this.c_state[this.ii] = [this["p" + this.i + this.j].x, this["p" + this.i + this.j].y];
                  this.ii ++;
               }
            }
         }
         trace(c_state);
      } */
      
      public function check_win() : *
      {
         for(this.i = 0; this.i < 6; this.i++)
         {
            for(this.j = 0; this.j < 6; this.j++)
            {
               if(!(this.i == 0 && this.j == 5))
               {
                  if(!(this["p" + this.i + this.j].x == this["p" + this.i + this.j].xbd && this["p" + this.i + this.j].y == this["p" + this.i + this.j].ybd))
                  {
                     return;
                  }
               }
            }
         }
         this.hidden_clock_hour.gotoAndStop(2);
         MovieClip(root).done_task(115);
      }
      
      function frame1() : *
      {
         this.suf = 0;
         this.base_size = 50;
         this.empty_p = [0,5];
         this.init_state = [[50, 0], [100, 0], [150, 0], [200, 0], [250, 50], [0, 0], [0, 50], [50, 50], [100, 50], [150, 50], [200, 50], [50, 100], [100, 100], [150, 100], [200, 100], [250, 150], [250, 100], [0, 100], [0, 150], [50, 150], [100, 150], [150, 150], [200, 150], [50, 200], [100, 200], [150, 200], [200, 200], [250, 250], [250, 200], [0, 200], [0, 250], [50, 250], [100, 250], [150, 250], [200, 250]];
         for(this.i = 0; this.i < 6; this.i++)
         {
            for(this.j = 0; this.j < 6; this.j++)
            {
               if(!(this.i == 0 && this.j == 5))
               {
                  this["p" + this.i + this.j].xbd = this.j * this.base_size;
                  this["p" + this.i + this.j].ybd = this.i * this.base_size;
                  this["p" + this.i + this.j].addEventListener(MouseEvent.CLICK,this.clickHandle);
                  this["p" + this.i + this.j].x = this.init_state[this.suf][0];
                  this["p" + this.i + this.j].y = this.init_state[this.suf][1];
                  // this["p" + this.i + this.j].x = this["p" + this.i + this.j].xbd;
                  // this["p" + this.i + this.j].y = this["p" + this.i + this.j].ybd;
                  this.suf += 1;
               }
            }
         }
      }
   }
}
