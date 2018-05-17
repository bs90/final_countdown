package NWO_fla
{
   import flash.display.MovieClip;
   
   public dynamic class mirror_80 extends MovieClip
   {
       
      
      public function mirror_80()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      function frame1() : *
      {
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
