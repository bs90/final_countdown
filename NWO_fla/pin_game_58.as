package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public dynamic class pin_game_58 extends MovieClip
   {
       
      
      public var long_pin_status:MovieClip;
      
      public var p1:MovieClip;
      
      public var p2:MovieClip;
      
      public var p3:MovieClip;
      
      public var green_locker:MovieClip;
      
      public var r14_battery:MovieClip;
      
      public var p4:MovieClip;
      
      public var p5:MovieClip;
      
      public var p6:MovieClip;
      
      public var i;
      
      public var obj;
      
      public var drop_state;
      
      public var drop_pos:Array;
      
      public function pin_game_58()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function startMove(e:MouseEvent) : void
      {
         var piece_obj:* = e.currentTarget;
         if(piece_obj.drop_pos != 0)
         {
            this.drop_state[piece_obj.drop_pos - 1] = 0;
            piece_obj.drop_pos = 0;
         }
         piece_obj.ondrag = true;
         piece_obj.startDrag(false,new Rectangle(0,0,307,165));
         piece_obj.parent.setChildIndex(piece_obj,piece_obj.parent.numChildren - 1);
      }
      
      public function stopMove(e:MouseEvent) : void
      {
         this.obj = e.currentTarget;
         this.obj.stopDrag();
         for(this.i = 1; this.i <= 6; this.i++)
         {
            if(Math.abs(this.obj.x - this.drop_pos[this.i - 1][0]) < 10 && Math.abs(this.obj.y - this.drop_pos[this.i - 1][1]) < 10 && this.drop_state[this.drop_pos[this.i - 1][2] - 1] == 0)
            {
               this.obj.x = this.drop_pos[this.i - 1][0];
               this.obj.y = this.drop_pos[this.i - 1][1];
               this.obj.drop_pos = this.drop_pos[this.i - 1][2];
               this.drop_state[this.drop_pos[this.i - 1][2] - 1] = this.obj.vv;
               this.obj.parent["long_pin_status"].width = 2 * (this.drop_state[0] + this.drop_state[4] + 2 * (this.drop_state[1] + this.drop_state[5]) + 3 * (this.drop_state[3] + this.drop_state[2]));
               if(this.obj.parent["long_pin_status"].width == 200 && (this.drop_state[0] != 0 && this.drop_state[1] != 0 && this.drop_state[2] != 0 && this.drop_state[3] != 0 && this.drop_state[4] != 0 && this.drop_state[5] != 0))
               {
                  if(!MovieClip(root).r14_battery2_got)
                  {
                     this.r14_battery.visible = true;
                     MovieClip(root).send_notification("A battery comes out!");
                  }
               }
               return;
            }
         }
         this.obj.parent["long_pin_status"].width = 2 * (this.drop_state[0] + this.drop_state[4] + 2 * (this.drop_state[1] + this.drop_state[5]) + 3 * (this.drop_state[3] + this.drop_state[2]));
      }
      
      function frame1() : *
      {
         stop();
         this.green_locker.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(MovieClip(root).using == "shared_r2_franaldo_key")
            {
               e.target.parent.gotoAndStop(2);
            }
            else
            {
               MovieClip(root).send_notification("It\'s a locked computer!");
            }
         });
      }
      
      function frame2() : *
      {
         stop();
         this.r14_battery.visible = false;
         this.drop_state = [0,0,0,0,0,0];
         this.drop_pos = [[40,20,1],[160,20,2],[280,20,3],[40,60,4],[160,60,5],[280,60,6]];
         this.long_pin_status.width = 0;
         this["p1"].vv = this["p2"].vv = 20;
         this["p3"].vv = this["p4"].vv = 5;
         this["p5"].vv = this["p6"].vv = 1;
         for(this.i = 1; this.i <= 6; this.i++)
         {
            this["p" + this.i].v_txt.text = this["p" + this.i].vv + "V";
            this["p" + this.i].drop_pos = 0;
            this["p" + this.i].addEventListener(MouseEvent.MOUSE_DOWN,this.startMove);
            this["p" + this.i].addEventListener(MouseEvent.MOUSE_UP,this.stopMove);
            this["p" + this.i].addEventListener(MouseEvent.MOUSE_OUT,this.stopMove);
         }
         this.r14_battery.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            e.target.visible = false;
            if(MovieClip(root).r14_battery1_got)
            {
               MovieClip(root).r14_battery2_got = true;
               MovieClip(root)["shared_r14_battery2"].visible = true;
               MovieClip(root).done_task(19);
            }
            else
            {
               MovieClip(root).r14_battery1_got = true;
               MovieClip(root)["shared_r14_battery1"].visible = true;
            }
            MovieClip(root).send_notification("You got it.");
         });
      }
   }
}
