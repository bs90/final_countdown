package NWO_fla
{
   import flash.display.MovieClip;
   
   public dynamic class tovit_23 extends MovieClip
   {
       
      
      public function tovit_23()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      function frame1() : *
      {
         if(MovieClip(root).tovit_status != 1)
         {
            stop();
         }
      }
      
      function frame2() : *
      {
         if(MovieClip(root).tovit_status != 0)
         {
            stop();
         }
      }
   }
}
