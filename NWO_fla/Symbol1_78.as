package NWO_fla
{
   import flash.display.MovieClip;
   
   public dynamic class Symbol1_78 extends MovieClip
   {
       
      
      public var lock_mc:MovieClip;
      
      public function Symbol1_78()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      function frame1() : *
      {
         this.lock_mc.visible = false;
         stop();
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
