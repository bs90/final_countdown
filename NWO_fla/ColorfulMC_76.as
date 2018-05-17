package NWO_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public dynamic class ColorfulMC_76 extends MovieClip
   {
       
      
      public var c36:MovieClip;
      
      public var c41:MovieClip;
      
      public var c51:MovieClip;
      
      public var c42:MovieClip;
      
      public var c61:MovieClip;
      
      public var c52:MovieClip;
      
      public var c43:MovieClip;
      
      public var c62:MovieClip;
      
      public var c53:MovieClip;
      
      public var c44:MovieClip;
      
      public var c63:MovieClip;
      
      public var c54:MovieClip;
      
      public var c45:MovieClip;
      
      public var c64:MovieClip;
      
      public var c55:MovieClip;
      
      public var c46:MovieClip;
      
      public var c11:MovieClip;
      
      public var c65:MovieClip;
      
      public var c56:MovieClip;
      
      public var c21:MovieClip;
      
      public var c12:MovieClip;
      
      public var c66:MovieClip;
      
      public var c31:MovieClip;
      
      public var c22:MovieClip;
      
      public var c13:MovieClip;
      
      public var c32:MovieClip;
      
      public var c23:MovieClip;
      
      public var c14:MovieClip;
      
      public var c33:MovieClip;
      
      public var c24:MovieClip;
      
      public var c15:MovieClip;
      
      public var c34:MovieClip;
      
      public var c25:MovieClip;
      
      public var c16:MovieClip;
      
      public var c35:MovieClip;
      
      public var c26:MovieClip;
      
      public var r24_clf_bee:MovieClip;
      
      public var next_btn:SimpleButton;
      
      public var i;
      
      public var j;
      
      public var count;
      
      public var state_arr:Array;
      
      public function ColorfulMC_76()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function colorClick(i:*, j:*) : Function
      {
         return function(e:MouseEvent):void
         {
            if(!e.target.locked)
            {
               e.target.play();
               state_arr[i + 1][j + 1] = (state_arr[i + 1][j + 1] + 1) % 3;
               check_win();
            }
         };
      }
      
      public function check_win() : void
      {
         for(this.i = 1; this.i <= 6; this.i++)
         {
            for(this.j = 1; this.j <= 6; this.j++)
            {
               if(this.state_arr[this.i + 1][this.j + 1] == this.state_arr[this.i + 1][this.j + 2] && this.state_arr[this.i + 1][this.j + 2] == this.state_arr[this.i + 1][this.j + 3] || this.state_arr[this.i + 1][this.j + 1] == this.state_arr[this.i + 2][this.j + 1] && this.state_arr[this.i + 2][this.j + 1] == this.state_arr[this.i + 3][this.j + 1])
               {
                  return;
               }
            }
         }
         for(this.i = 1; this.i <= 6; this.i++)
         {
            this.count = this.count_in_array(this.state_arr[this.i + 1]);
            if(this.count[1] != 3 || this.count[2] != 3)
            {
               return;
            }
            this.count = this.count_in_array([this.state_arr[2][this.i + 1],this.state_arr[3][this.i + 1],this.state_arr[4][this.i + 1],this.state_arr[5][this.i + 1],this.state_arr[6][this.i + 1],this.state_arr[7][this.i + 1]]);
            if(this.count[1] != 3 || this.count[2] != 3)
            {
               return;
            }
         }
         for(this.i = 1; this.i <= 6; this.i++)
         {
            for(this.j = 1; this.j <= 6; this.j++)
            {
               this["c" + this.i + this.j].visible = false;
            }
         }
         this.r24_clf_bee.visible = true;
         MovieClip(root).done_task(9);
      }
      
      public function count_in_array(arr:*) : Object
      {
         var element:* = undefined;
         var map:Object = {};
         for each(element in arr)
         {
            if(!map[element])
            {
               map[element] = 1;
            }
            else
            {
               map[element]++;
            }
         }
         return map;
      }
      
      public function get_clf_bee(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r24_bee_got = true;
         MovieClip(root)["shared_clf_bee"].visible = true;
         MovieClip(root).send_notification("You got a strange paper!");
      }
      
      function frame1() : *
      {
         stop();
         this.next_btn.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            e.target.parent.play();
         });
      }
      
      function frame2() : *
      {
         stop();
         this.state_arr = new Array(10);
         for(this.i = 0; this.i < 10; this.i++)
         {
            this.state_arr[this.i] = new Array(10);
            for(this.j = 0; this.j < 10; this.j++)
            {
               this.state_arr[this.i][this.j] = 0;
            }
         }
         for(this.i = 1; this.i <= 6; this.i++)
         {
            for(this.j = 1; this.j <= 6; this.j++)
            {
               this["c" + this.i + this.j].locked = false;
               this["c" + this.i + this.j].addEventListener(MouseEvent.CLICK,this.colorClick(this.i,this.j));
            }
         }
         this.c13.gotoAndStop(2);
         this.c14.gotoAndStop(2);
         this.c25.gotoAndStop(2);
         this.c16.gotoAndStop(2);
         this.c44.gotoAndStop(2);
         this.c13.locked = true;
         this.c14.locked = true;
         this.c25.locked = true;
         this.c16.locked = true;
         this.c44.locked = true;
         this.c13.lock_mc.visible = true;
         this.c14.lock_mc.visible = true;
         this.c25.lock_mc.visible = true;
         this.c16.lock_mc.visible = true;
         this.c44.lock_mc.visible = true;
         this.state_arr[2][4] = this.state_arr[2][5] = this.state_arr[3][6] = this.state_arr[2][7] = this.state_arr[5][5] = 1;
         this.c31.gotoAndStop(3);
         this.c61.gotoAndStop(3);
         this.c33.gotoAndStop(3);
         this.c43.gotoAndStop(3);
         this.c54.gotoAndStop(3);
         this.c31.locked = true;
         this.c61.locked = true;
         this.c33.locked = true;
         this.c43.locked = true;
         this.c54.locked = true;
         this.c31.lock_mc.visible = true;
         this.c61.lock_mc.visible = true;
         this.c33.lock_mc.visible = true;
         this.c43.lock_mc.visible = true;
         this.c54.lock_mc.visible = true;
         this.state_arr[4][2] = this.state_arr[7][2] = this.state_arr[4][4] = this.state_arr[5][4] = this.state_arr[6][5] = 2;
         if(!MovieClip(root).r24_bee_got)
         {
            this.r24_clf_bee.visible = false;
         }
         this.r24_clf_bee.addEventListener(MouseEvent.CLICK,this.get_clf_bee);
      }
   }
}
