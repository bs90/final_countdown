package NWO_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public dynamic class start_mc_42 extends MovieClip
   {
      public var slogan_txt:TextField;
      
      public var start_btn:SimpleButton;
      
      public function start_mc_42()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function check_and_start(e:MouseEvent) : *
      {
         if(this.slogan_txt.text == "#from_asia_to_the_world")
         {
            MovieClip(root).started = true;
            e.target.parent.visible = false;
            MovieClip(root).done_task(1);
         }
      }
      
      function frame1() : *
      {
         stop();
         this.start_btn.addEventListener(MouseEvent.CLICK,this.check_and_start);
      }
   }
}
