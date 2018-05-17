package NWO_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public dynamic class pc_166 extends MovieClip
   {
       
      
      public var enter:SimpleButton;
      
      public var input:TextField;
      
      public function pc_166()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      function frame1() : *
      {
         stop();
         this.enter.addEventListener(MouseEvent.CLICK,function(e:MouseEvent):*
         {
            if(input.text == "greenmango")
            {
               MovieClip(root).using = "";
               MovieClip(root)["shared_items_bg_mc"].visible = false;
               e.target.parent.gotoAndStop(2);
            }
            else
            {
               MovieClip(root).send_notification("WRONG!");
            }
         });
      }
      
      function frame2() : *
      {
         stop();
      }
      
      function frame3() : *
      {
         stop();
      }
   }
}
