package NWO_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public dynamic class unblock_145 extends MovieClip
   {
       
      
      public var hidden:MovieClip;
      
      public var block1_mc:MovieClip;
      
      public var block6_mc:MovieClip;
      
      public var reset_btn:MovieClip;
      
      public var block7_mc:MovieClip;
      
      public var block4_mc:MovieClip;
      
      public var block5_mc:MovieClip;
      
      public var cuuhoa:MovieClip;
      
      public var block11_mc:MovieClip;
      
      public var block10_mc:MovieClip;
      
      public var block8_mc:MovieClip;
      
      public var block9_mc:MovieClip;
      
      public var block12_mc:MovieClip;
      
      public var block2_mc:MovieClip;
      
      public var block3_mc:MovieClip;
      
      public var block;
      
      public var bounds:Rectangle;
      
      public var i:int;
      
      public var j:int;
      
      public var base_size:int;
      
      public var current_x;
      
      public var current_y;
      
      public var top_y;
      
      public var bot_y;
      
      public var left_x;
      
      public var right_x;
      
      public var table_state:Array;
      
      public function unblock_145()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function drag_action(e:MouseEvent) : void
      {
         this.block = e.target;
         this.current_x = this.block.x / this.base_size;
         this.current_y = this.block.y / this.base_size;
         if(this.block.width < this.block.height)
         {
            this.top_y = this.current_y;
            this.bot_y = this.current_y + this.block.height / this.base_size;
            for(this.i = this.top_y; this.i < this.bot_y; this.i++)
            {
               this.table_state[this.current_x][this.i] = 0;
            }
            while(this.top_y > 0 && this.table_state[this.current_x][this.top_y - 1] == 0)
            {
               this.top_y--;
            }
            while(this.bot_y < 6 && this.table_state[this.current_x][this.bot_y] == 0)
            {
               this.bot_y++;
            }
            this.bounds = new Rectangle(this.current_x * this.base_size,this.top_y * this.base_size,0,(this.bot_y - this.top_y - this.block.height / this.base_size) * this.base_size);
         }
         else
         {
            this.left_x = this.current_x;
            this.right_x = this.current_x + this.block.width / this.base_size;
            for(this.i = this.left_x; this.i < this.right_x; this.i++)
            {
               this.table_state[this.i][this.current_y] = 0;
            }
            while(this.left_x > 0 && this.table_state[this.left_x - 1][this.current_y] == 0)
            {
               this.left_x--;
            }
            while(this.right_x < 6 && this.table_state[this.right_x][this.current_y] == 0)
            {
               this.right_x++;
            }
            if(this.current_y == 2 && this.right_x == 6)
            {
               this.right_x = 8;
            }
            this.bounds = new Rectangle(this.left_x * this.base_size,this.current_y * this.base_size,(this.right_x - this.left_x - this.block.width / this.base_size) * this.base_size,0);
         }
         this.block.startDrag(false,this.bounds);
      }
      
      public function drop_action(e:MouseEvent) : void
      {
         this.block = e.target;
         this.block.stopDrag();
         if(this.block.width < this.block.height)
         {
            this.block.y = Math.round(this.block.y / this.base_size) * this.base_size;
            this.current_x = this.block.x / this.base_size;
            this.current_y = this.block.y / this.base_size;
            this.top_y = this.current_y;
            this.bot_y = this.current_y + this.block.height / this.base_size;
            for(this.i = this.top_y; this.i < this.bot_y; this.i++)
            {
               this.table_state[this.current_x][this.i] = 1;
            }
         }
         else
         {
            this.block.x = Math.round(this.block.x / this.base_size) * this.base_size;
            if(this.block.x == 5 * this.base_size)
            {
               this.block.x = 6 * this.base_size;
            }
            this.current_x = this.block.x / this.base_size;
            this.current_y = this.block.y / this.base_size;
            this.left_x = this.current_x;
            this.right_x = this.current_x + this.block.width / this.base_size;
            if(this.current_x == 6)
            {
               MovieClip(root).done_task(25);
               this.hidden.visible = true;
               if(!MovieClip(root).r44_cuuhoa_got)
               {
                  this.cuuhoa.visible = true;
               }
               for(this.i = 1; this.i <= 12; this.i++)
               {
                  this["block" + this.i + "_mc"].visible = false;
               }
            }
            else
            {
               for(this.i = this.left_x; this.i < this.right_x; this.i++)
               {
                  this.table_state[this.i][this.current_y] = 1;
               }
            }
         }
      }
      
      public function get_cuuhoa(e:MouseEvent) : void
      {
         e.target.visible = false;
         MovieClip(root).r44_cuuhoa_got = true;
         MovieClip(root)["shared_cuuhoa"].visible = true;
         MovieClip(root).send_notification("A fire extinguisher. Am I on fire?");
      }
      
      function frame1() : *
      {
         stop();
         this.reset_btn.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            MovieClip(e.target.parent).play();
         });
         this.hidden.visible = false;
         this.cuuhoa.visible = false;
         this.base_size = 50;
         this.table_state = new Array(6);
         for(this.i = 0; this.i < 6; this.i++)
         {
            this.table_state[this.i] = new Array(6);
            for(this.j = 0; this.j < 6; this.j++)
            {
               this.table_state[this.i][this.j] = 1;
            }
         }
         this.table_state[2][0] = this.table_state[2][1] = this.table_state[5][1] = this.table_state[5][2] = this.table_state[5][3] = this.table_state[0][3] = this.table_state[1][3] = this.table_state[0][4] = this.table_state[1][4] = 0;
         for(this.i = 1; this.i <= 12; this.i++)
         {
            this["block" + this.i + "_mc"].addEventListener(MouseEvent.MOUSE_DOWN,this.drag_action);
            this["block" + this.i + "_mc"].addEventListener(MouseEvent.MOUSE_UP,this.drop_action);
            this["block" + this.i + "_mc"].addEventListener(MouseEvent.MOUSE_OUT,this.drop_action);
         }
         this.cuuhoa.addEventListener(MouseEvent.CLICK,this.get_cuuhoa);
      }
      
      function frame2() : *
      {
         gotoAndStop(1);
      }
   }
}
